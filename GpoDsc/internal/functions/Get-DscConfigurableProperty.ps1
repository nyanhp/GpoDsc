<#
.SYNOPSIS
    This method returns a hashtable of properties for a given Type
.DESCRIPTION
    This method returns a hashtable of properties with two special workarounds
    The hashtable will not include any properties marked as "NotConfigurable"
    Any properties with a ValidateSet of "True","False" will beconverted to Boolean type
    The intent is to simplify splatting to functions
    Source: https://gist.github.com/mgreenegit/e3a9b4e136fc2d510cf87e20390daa44
.EXAMPLE
    Get-DscConfigurableProperty -ResourceInstance $this

    Inside a DSC class, grab the type of the object and retrieve its properties.
#>
function Get-DscConfigurableProperty
{
    [OutputType([hashtable])]
    [CmdletBinding()]
    param
    (
        # The DSC class-based resource instance
        [Parameter(Mandatory)]
        [object]
        $ResourceInstance
    )

    $type = $ResourceInstance.GetType()

    $DscProperties = @{}
    foreach ($property in $Type.GetProperties().Name)
    {
        # Checks if "NotConfigurable" attribute is set
        $notConfigurable = $Type.GetProperty($property).GetCustomAttributes($false).Where({ $_ -is [System.Management.Automation.DscPropertyAttribute] }).NotConfigurable
        if (!$notConfigurable)
        {
            $value = $ResourceInstance.$property
            # Gets the list of valid values from the ValidateSet attribute
            $validateSet = $Type.GetProperty($property).GetCustomAttributes($false).Where({ $_ -is [System.Management.Automation.ValidateSetAttribute] }).ValidValues
            if ($validateSet)
            {
                # Workaround for boolean types
                if ($null -eq (Compare-Object @('True', 'False') $validateSet))
                {
                    $value = [System.Convert]::ToBoolean($ResourceInstance.$property)
                }
            }
            # Add property to new
            $DscProperties.add($property, $value)
        } 
    }
    return $DscProperties
}

Function Recalculate-Subnetmask($Subnetmask = "", $Numberform = 0) {
    If ($Numberform -eq "0") {
        $SNArray = $Subnetmask.Split(".")
        $nrform = 0

        foreach ($SNPart in $SNArray) {
            # https://stackoverflow.com/questions/15440333/count-number-of-strings-within-a-string
            $nrform += [System.Convert]::ToString($SNPart, 2).Split("1").GetUpperBound(0)
        }

        return $nrform
    }
    else {
        $Subnetmask = ""
        $count = 0

        while ($Numberform -ge 8) {
            $Subnetmask += "255."
            $Numberform -= 8
            $count++
        }

        $Subnetmask += [System.Convert]::ToInt16(("1" * $Numberform + "0" * (8 - $Numberform)), 2).ToString() + "."
        $count++

        for ($i = $count ; $i -lt 4 ; $i++) {
            $Subnetmask += "0."
        }

        return $Subnetmask.Trim(".")
    }
}

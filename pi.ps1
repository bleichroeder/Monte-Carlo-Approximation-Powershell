###############################################
# Approximate Pi using the Monte Carlo Method #
###############################################

# Set our maximum number of generated points
$maximumPoints = 1000000

do {

  # Generate a random X and Y coordinate
  $point = [PSCustomObject]@{
    X = Get-Random -Minimum 0.0 -Maximum 1.0
    Y = Get-Random -Minimum 0.0 -Maximum 1.0
  }

  # Determine the object's location on the plane
  $location = [Math]::Sqrt(($point.X * $point.X) + ($point.Y * $point.Y))

  # If the plotted point is inside the "circle", we use the data to approximate Pi
  # and add this point to our inside-points count
  if($location -lt 1 -and $totalPoints -gt 0) {
    Write-Output $(4 * ($insidePoints / $totalPoints))
    $insidePoints++
  }

  # Finally, add this point to our total-points count
  $totalPoints++

} while( $totalPoints -le $maximumPoints )
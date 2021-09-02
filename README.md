# Monte-Carlo Method: Approximating π in Powershell

A fun little script which applies the Monte-Carlo method to approximate the value of π.

## How it works!

The basic pattern of Monte Carlo methods is as follows.

1. Define a domain of possible inputs.
  * Imagine a square, then inscribe a quadrant within it.
2. Generate random inputs from a probability distribution over the domain.
  * Uniformaly scatter a given number of points over the square. (In our case $maximumPoints)
3. Perform a deterministic computation of the inputs.
  * Count the number of points inside the quadrant. (IE having a distance from the origin < 1)
4. Aggregate the results.
  * The ratio of the inside-count and the total-sample-count is an estimate of the ratio of the two areas, π/4.
  * You can then multiply the result by 4 to estimate π.

In the Monte-Carlo approximation, the domain is the square that circumscribes the quadrant.
If the point's distance from the origin (0.0 x 0.0) is greater than 1, that means it falls outside of the quadrant.
On average, the approximation improves as more points are placed.

By default, the $maximumPoints variable is set to 1000000, but feel free to go crazy.


https://en.wikipedia.org/wiki/Monte_Carlo_method

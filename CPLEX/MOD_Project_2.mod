/*********************************************
 * OPL 20.1.0.0 Model
 * Authors: Maciej Morawski, Kamil Wi³nicki
 * Creation Date: Jan 14, 2022 at 1:22:21 AM
 *********************************************/

/* PARAMETERS SPECYFYING THE SIZE OF THE EXAMPLE */

// Number of mines 
int K = ...;
// Number of years the company plans to operate 
int R = ...;

/* VARIABLES */

// Amount of ore mined at each mine in each year
dvar float x[1..K][1..R];
// Flag indicating whether ore is being extracted from the mine in a given year
dvar boolean v[1..K][1..R];
// Flag indicating whether a mine is "open" in a given year
dvar boolean y[1..K][1..R];

/* PARAMETERS */

// Large constant
int Mconst = ...;
// Maximum number of mines in operation in a given year
int Emax = ...;
// Annual royalty payable on keeping a mine "open"
float u[1..K] = ...;
// Upper limit on the ore mined from a given mine during the year
float xmax[1..K] = ...;
// Quality of the ore at a given mine
float j[1..K] = ...;
// Required quality of mixed ore in a given year
float w[1..R] = ...;
// Ore value
float c = ...;
// Discount factor 
float beta = ...;


/* OBJECTIVE FUNCTION */

maximize 
  sum( k in 1..K )
    sum(r in 1..R)
      ( beta^( r-1 ) ) * (c * x[k][r] - u[k] * y[k][r]);
    
/* CONSTRAINTS */

subject to {
  
  forall( k in 1..K )
    forall( r in 1..R )
      nonnegativeValue:
        x[k][r] >= 0;
  
  forall( k in 1..K )
    forall( r in 1..R )
      operateMineFlag:
        x[k][r] <= Mconst * v[k][r];
  
  forall( r in 1..R )
    maxNumOfMinesInOperation:
      sum( k in 1..K)
        v[k][r] <= Emax;
      
  forall( k in 1..K )
    forall( r in 1..R )
      upperLimitOfOreMinedInMine:
        x[k][r] <= xmax[k];
  
  forall( k in 1..K )
    forall( r in 1..(R-1) )
      openMineFlag_A:
        y[k][r] <= v[k][r] + v[k][r+1];
        
  forall( k in 1..K )
    forall( r in 1..(R-1) )
      openMineFlag_B:
        y[k][r] >= v[k][r];
        
  forall( k in 1..K )
    forall( r in 1..(R-1) )
      openMineFlag_C:
        y[k][r] >= v[k][r+1];
      
  forall( k in 1..K )
      openMineFlag_D:
        y[k][R] == v[k][R];
        
  forall( r in 1..R )
      mixedOreQuality:
        sum( k in 1..K ) ( j[k] * x[k][r] )
          ==
            w[r] * sum( k in 1..K )( x[k][r] );
      
}
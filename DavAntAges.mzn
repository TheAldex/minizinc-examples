% David and Anton are 65 years old. 
% David is currently three times as old as Anton was when David was half as old as Anton 
% when Anton was three times as old as David when David was three times as old as Anton.
% 
% What are the ages of David and Anton?

% David ages
var float :D0;
var float :D1;
var float :D2;
var float :D3;

% Anton ages
var float :A0;
var float :A1;
var float :A2;
var float :A3;

% Sum of ages is 65
constraint D0+A0 = 65;

% David is three times older tham Anton
constraint D0 = 3*A1;

% David was half as old as Anton
constraint D1 = (0.5)*A2;

% Anton was three times as old as David
constraint A2 = 3*D3;

% David was three times older
constraint D3 = 3*A3;

% Age difference
constraint D1-D0 = A1-A0;
constraint D2-D1 = A2-A1;
constraint D3-D2 = A3-A2;

solve satisfy;

output
[
  "The age of David is: " ++ show(D0)
];
output
[
  "The age of Anton is: " ++ show(A0)
];
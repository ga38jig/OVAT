%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PROGRAMMIERAUFGABE 1              %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function programmieraufgabe1

%---------------------------
% Define Cost Function
  FUN=@polynomial;
%   FUN=@exercise;
%---------------------------


%---------------------------
% Apply your search
  
  % Initial guess
  x0=-3;
  % Parameters of algorithm
  tol=1e-4;
  Nmax=100;
  
  % Call your routine
  [x,flag] = mygoldensearch(FUN,x0,tol,Nmax)
  
  % flag=0 if Minimization successful
  % flag=1 if Minimization not successful
  
%---------------------------
 

%---------------------------
% Prepare Visualization
  
  % Define Region for Plot
  xlower=-3;
  xupper=3;
  flower=-3;
  fupper=3;

  visualization(FUN,x,[xlower,xupper,flower,fupper]);
%---------------------------

end





 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Do not change any of the following  routines!!!!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f=polynomial(x)
  
  f=1/4*x^4-x^2-1/2*x;
  
end


function f=exercise(x)
  
  f=-x^2*exp(-x^2);
  
end



function visualization(FUN,xstar,bounds)  
  %% Plot of cost function f(x)
  x=bounds(1):0.01:bounds(2);
  for j=1:length(x)
    y(j)=feval(FUN,x(j));
  end
  plot(x,y)
  hold on;
  plot([bounds(1),bounds(2)],[0,0],'k')

  %% Mark Minimum
  ystar=feval(FUN,xstar);
  plot(xstar,ystar,'*', 'MarkerSize',12)
    
  %% Configure axes of the plot
  axis equal
  axis([bounds(1),bounds(2),bounds(3),bounds(4)]);
  grid on;
  xlabel('x');
  ylabel('f(x)');
  hold off;
  
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





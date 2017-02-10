function  rms=regression_check( w,xTrain,yTrain )

y=zeros(20,1);
rms = 0;
for j=1:20
for i = 1:size(w,1)
    y(j) = w(i)*xTrain(j)^(i-1)+y(j);
end
rms = rms + (y(j) - yTrain(j))^2;
end

rms = sqrt(2*rms/20);
end


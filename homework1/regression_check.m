function  y=regression_check( w,xTrain,yTrain )

y=zeros(20,1);
for j=1:20
for i = 1:size(w,1)
    y(j) = w(i)*xTrain(j)^(i-1)+y(j);
end
end
hold on
plot(y,'r')
plot(yTrain,'b')

end


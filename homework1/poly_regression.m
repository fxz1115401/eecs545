function  w=poly_regression( degree,xTrain,yTrain )

    phi = zeros(20,degree+1);
    for i = 1:degree + 1
 
        for j = 1:20
            phi(j,i) = xTrain(j)^(i-1);
        end
        
    end
    
    
    w = inv(phi'*phi)*phi'*yTrain;
    

end


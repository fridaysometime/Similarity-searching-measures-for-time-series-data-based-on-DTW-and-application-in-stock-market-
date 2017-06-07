function result=early_abandon(a,b,e)

   for i= 1:length(a)
		for j = 1:length(b)
			d(i, j) = (a(i)-b(j))*(a(i)-b(j));
		end
	end
	
	r(1,1) = 0;
	for i = 2:length(a)+1
		r(i,1) = inf;
	end
	for i = 2:length(b)+1
		r(1,i) = inf;
	end
	
	for i = 2:length(a)+1
		for j = 2:length(b)+1
			r(i,j) = d(i-1,j-1) + min([r(i-1,j-1) r(i-1,j) r(i,j-1)]);
		end
    end   
    
  for i = 2:length(a)+1
			if all(r(i,:))>e||all(r(:,i)>e)
                result=0;
            else
                result = [sqrt(r(length(a)+1,length(b)+1))];             
		    end
   end   
   
end
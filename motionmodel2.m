function [prob] = motionmodel2(i,j,actual,action)
sum = 0;
step = [0.1 0.8 0.1];
for s = 0:2
    try
        if action == 102 %30
            sum = sum + step(s+1) * actual(i+s,j);
        elseif action == 98 %31
            sum = sum + step(s+1) * actual(i-s,j);
        elseif action == 108 %28
            sum = sum + step(s+1) * actual(i,j+s);
        elseif action == 114 %29
            sum = sum + step(s+1) * actual(i,j-s);
        end
    catch
        continue
    end
end
prob = sum;


matf = dir('*.mat')
num = length(matf)
cropnum = 500
cropsize = 128
cropstart = 1
stride = 64
finnalpixel = stride*cropnum+1

for i=1:num
    mat = load(matf(i).name)
    r = mat.ref(:,:,1)
    [n m] = size(r)
    new = 1
    for j=1:stride:finnalpixel
        if (((n-cropstart-j)<cropsize)) == 1
            break
        else
            for k=1:stride:finnalpixel
                if (((m-cropstart-k)<cropsize)) == 1   %小于裁剪大小便跳至下一张图片
                    break
                else    
                    block = mat.ref(cropstart+j:cropstart+j+cropsize-1,cropstart+k:cropstart+k+cropsize-1,:)
                    save(strcat('1\',strcat(matf(i).name(1:end-4),strcat('-',strcat(num2str(new),'.mat')))),'block');
                    new = new+1
                end       
            end
        end    
    end
end

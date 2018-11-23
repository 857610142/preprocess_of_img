pics = dir('*.png')
num = length(pics)

for i=1:num
    image = imread(pics(i).name)
    g = rgb2ycbcr(image)
    g = im2double(g(:, :, 1));
    imwrite(g,['new_dir_name\',pics(i).name]);
end

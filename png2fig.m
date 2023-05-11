
% saveas(gcf, ['./temp/image' num2str(i) '.png']);

A = imread(['./temp/lx/' num2str(1) '.png']);
[I,map]=rgb2ind(A,256);
imwrite(I,map,'bonuli.gif','DelayTime',1,'LoopCount',Inf);
for i=2:1:34
    A = imread(['./temp/lx/' num2str(i) '.png']);
    [I,map]=rgb2ind(A,256);
    imwrite(I,map,'bonuli.gif','WriteMode','append','DelayTime',0.1);
end

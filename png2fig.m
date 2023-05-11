
% saveas(gcf, ['./temp/image' num2str(i) '.png']);

pngPath = '../result/fu_fig/';
figName = [pngPath 'fu_fig.gif'];
DelayTime = 0.1;

includeFile = dir(pngPath);
pngsName = string({includeFile.name})';
pngsName = pngsName(3:end,:);
% pngsName_s = sort(pngsName);
% A = imread([pngPath pngsName(1,:)]);


A = imread([pngPath num2str(0) '.png']);
[I,map]=rgb2ind(A,256);
imwrite(I,map,figName,'DelayTime',1,'LoopCount',Inf);

for i=1:1:50
    A = imread([pngPath num2str(i) '.png']);
    [I,map]=rgb2ind(A,256);
    imwrite(I,map,figName,'WriteMode','append','DelayTime',DelayTime);
end

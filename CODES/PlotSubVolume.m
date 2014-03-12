function PlotSubVolume( S, nm )

sz = size(S)

ct = 0 ;
for ii = 1 : 100: 400
    for jj = 1 : 100: 400
        for kk = 1 : 100: 400
            ct = ct + 1;
            clf;
            
            isosurface(S(ii+[1:100],jj+[1:100],kk+[1:100]));
            colormap gray;
            axis equal
            set( gca,'Xtick',[])
            set( gca,'Ytick',[])
            set( gca,'Ztick',[])
            box on
            saveas( gcf, sprintf( '~/Desktop/Natural/%s/%s_%03i.png', nm, nm, ct) )
        end
    end
end
# Script to plot cross-section bathymetric profile (here: 10 profiles, Kuril-Kamchatka Trench).
# cd /Users/pauline/Documents/Octave
# pwd
# load table into Octave
load table_10h.txt
# look up the table
table_10h
# assign variables
P = table_10h; % assign table to P
K = P(:,1); % assign 400-kilometer cross-section line (km) to x axis
D1 = P(:,2); % assign depths to y axis
D2 = P(:,3); % assign depths to y axis
D3 = P(:,4); % assign depths to y axis
D4 = P(:,5); % assign depths to y axis
D5 = P(:,6); % assign depths to y axis
D6 = P(:,7); % assign depths to y axis
D7 = P(:,8); % assign depths to y axis
D8 = P(:,9); % assign depths to y axis
D9 = P(:,10); % assign depths to y axis
D10 = P(:,11); % assign depths to y axis
# check up variables in the current session
whos
# now plot figure
figure;
clf;
hold on;
subplot(2,1,1);
plot(K, D1, 'r+', 'markersize', 5 , K, D2, 'go', 'markersize', 5, K, D3, 'b*', 'markersize', 5, K, D4, 'mx', 'markersize', 5, K, D5, 'cv', 'markersize', 5); % plot x against y
    grid on;
    axis tight;
    set(gca,'xlim',[-200 200]);
    title({'Octave plot: Kuril-Kamchatka Trench' ; 'cross-section profiles 1, 7, 14, 21, 28'},
          'FontSize', 10, 'Color', 'black', 'FontWeight', 'normal', 'FontName', 'Monaco');
    xlabel('Observations along 400-km cross-section');
    ylabel('Depths, m');
    ylim ([-9000 200]);
    xlim ([-200 200]);
    axis([-200 200 -9000 200]);
    legend ({'profile 1', 'profile 7', 'profile 14', 'profile 21', 'profile 28'}, 'location', 'northeastoutside');
subplot(2,1,2);
plot(K, D6, 'r<', 'markersize', 5 , K, D7, 'go', 'markersize', 5, K, D8, 'b*', 'markersize', 5, K, D9, 'mx', 'markersize', 5, K, D10, 'cv', 'markersize', 5); % plot x against y
    grid on;
    axis tight;
    set(gca,'xlim',[-200 200]);
    title({'Octave plot: Kuril-Kamchatka Trench' ; 'cross-section profiles 35, 42, 49, 56, 62'},
      'FontSize', 10, 'Color', 'black', 'FontWeight', 'normal', 'FontName', 'Monaco');
    xlabel('Observations along 400-km cross-section');
    ylabel('Depths, m');
    ylim ([-9000 200]);
    xlim ([-200 200]);
    axis([-200 200 -9000 200]);
    legend ({'profile 35', 'profile 42', 'profile 49', 'profile 56', 'profile 62'}, 'location', 'northeastoutside');
print('plot_KKTprofiles.jpg','-djpg','-r300');
#close all % Close all open figure windows
#clc Clear command window (shell)

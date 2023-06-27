% Urban Oasis MATLAB script

% Initialize variables
riverLength = 1000;
numPlants = 500;
numTrees = 200;
numBoulders = 300;

% Create 2D array to store river data
river = zeros(riverLength, 3);

% Set up loop to generate river data
for i = 1:riverLength
    if i <= numPlants
        river(i,1) = 1;
    elseif i > numPlants && i <= numPlants + numTrees
        river(i,2) = 1;
    else
        river(i,3) = 1;
    end
end

% Generate a random number between 0 and 100
randNum = randi(100);
% Generate a random index in the river
randIdx = randi(riverLength);

% Add random item to river data
if randNum <= 30
    river(randIdx, 1) = 1;
elseif randNum > 30 && randNum <= 60
    river(randIdx, 2) = 1;
else
    river(randIdx, 3) = 1;
end

% Create 2D array to store landscape data
landscape = zeros(riverLength, 3);

% Set up loop to generate landscape data
for i = 1:riverLength
    if i <= numPlants
        landscape(i,1) = 1;
    elseif i > numPlants && i <= numPlants + numTrees
        landscape(i,2) = 1;
    else
        landscape(i,3) = 1;
    end
end

% Adjust landscape based on river data
for i = 1:riverLength
    if river(i,1) == 1
        landscape(i,1) = 2;
    elseif river(i,2) == 1
        landscape(i,2) = 2;
    elseif river(i,3) == 1
        landscape(i,3) = 2;
    end
end

% Create matrix to store river data
riverData = zeros(riverLength, 3);

% Set up loop to generate river data
for i = 1:riverLength
    riverData(i,1) = sum(river(1:i,1));
    riverData(i,2) = sum(river(1:i,2));
    riverData(i,3) = sum(river(1:i,3));
end

% Set up loop to generate landscape data
for i = 1:riverLength
    landscapeData(i,1) = sum(landscape(1:i,1));
    landscapeData(i,2) = sum(landscape(1:i,2));
    landscapeData(i,3) = sum(landscape(1:i,3));
end

% Plot river data
figure
hold on
plot(riverData(:,1), 'k')
plot(riverData(:,2), 'g')
plot(riverData(:,3), 'r')
title('Urban Oasis')
xlabel('River Length')
ylabel('Number of Objects')
legend('Plants', 'Trees', 'Boulders')

% Plot landscape data
figure
hold on
plot(landscapeData(:,1), 'k')
plot(landscapeData(:,2), 'g')
plot(landscapeData(:,3), 'r')
title('Urban Oasis')
xlabel('River Length')
ylabel('Number of Objects')
legend('Plants', 'Trees', 'Boulders')
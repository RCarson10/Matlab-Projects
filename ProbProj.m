%% Card Shuffle
% This script will show the probablility of getting a number card vs
% getting a face card (Jack,King, Queen) or an Ace. Since there are 3 face
% cards for each suit, the probability should be 12/52. The graph will be
% the form of a pie chart showing number cards, face cards, and aces. 2-10
% will be number cards, 11-13 will be face cards, and Aces will be 1.
% This is trial with 50 tests
shuffResults = [9,8,2,5,7,7,4,11,5,13,3,1,7,4,12,1,13,1,1,6,2,2,4,12,8,4,8,3,1,9,1,9,11,3,11,13,5,9,8,8,3,11,2,12,5,2,2,8,4,9];
Labels = {'Numbers','Face','Ace'};
x = [34,10,6]; % Number cards, Face cards, Ace cards
pie(x,Labels);
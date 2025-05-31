function dist = list_distance(filename)
%LIST_DISTANCE finds the distance between two lists of location IDs
%
% list_distance(filename) takes a string with the name of
% the file with the data.

    arguments
        filename string
    end

    data = readmatrix(filename);

    list1 = data(:, 1);
    list2 = data(:, 2);

    list1_sorted = sort(list1);
    list2_sorted = sort(list2);
    dist = sum(abs(list1_sorted - list2_sorted));
end
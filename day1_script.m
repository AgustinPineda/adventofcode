function dist = day1_script(filename)
    arguments
        filename string
    end
    data = readmatrix(filename);
    l1 = sort(data(:,1));
    l2 = sort(data(:,2));

    distances = zeros(length(l1));
    for i = 1:length(l1)
        distances(i) = abs( l1(i) - l2(i) );
    end

    dist = sum(distances, "all");
end

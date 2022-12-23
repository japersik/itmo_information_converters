max_abs_xx = 0;
maxdelta_xx = 0;
for p = r_xx'
    absolut = abs(p(2)-(a_xx(1)*p(1)+a_xx(2)));
    if absolut>max_abs_xx
        max_abs_xx = absolut;
    end
    delta = absolut/(a_xx(1)*p(1)+a_xx(2))*100;
    if delta>maxdelta_xx
        maxdelta_xx = delta;
    end
end

max_abs_200 = 0;
maxdelta_200 = 0;
for p = r_200'
    absolut = abs(p(2)-(a_200(1)*p(1)+a_200(2)));
    if absolut>max_abs_200
        max_abs_200 = absolut;
    end
    delta = absolut/(a_200(1)*p(1)+a_200(2))*100;
    if delta>maxdelta_200
        maxdelta_200 = delta;
    end
end

max_abs_400 = 0;
maxdelta_400 = 0;
for p = r_400'
    absolut = abs(p(2)-(a_400(1)*p(1)+a_400(2)));
    if absolut>max_abs_400
        max_abs_400 = absolut;
    end
    delta = absolut/(a_400(1)*p(1)+a_400(2))*100;
    if delta>maxdelta_400
        maxdelta_400 = delta;
    end
end

max_abs_600 = 0;
maxdelta_600 = 0;
for p = r_600'
    absolut = abs(p(2)-(a_600(1)*p(1)+a_600(2)));
    if absolut>max_abs_600
        max_abs_600 = absolut;
    end
    delta = absolut/(a_600(1)*p(1)+a_600(2))*100;
    if delta>maxdelta_600
        maxdelta_600 = delta;
    end
end

max_abs_800 = 0;
maxdelta_800 = 0;
for p = r_800'
    absolut = abs(p(2)-(a_800(1)*p(1)+a_800(2)));
    if absolut>max_abs_800
        max_abs_800 = absolut;
    end
    delta = absolut/(a_800(1)*p(1)+a_800(2))*100;
    if delta>maxdelta_800
        maxdelta_800 = delta;
    end
end

max_abs_1000 = 0;
maxdelta_1000 = 0;
for p = r_1000'
    absolut = abs(p(2)-(a_1000(1)*p(1)+a_1000(2)));
    if absolut>max_abs_1000
        max_abs_1000 = absolut;
    end
    delta = absolut/(a_1000(1)*p(1)+a_1000(2))*100;
    if delta>maxdelta_1000
        maxdelta_1000 = delta;
    end
end


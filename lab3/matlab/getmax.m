max_abs_xx = 0;
maxdelta_xx = 0;
for p = encoder_data'
    absolut = abs(p(2)-(a_xx(1)*p(1)+a_xx(2)));
    if absolut>max_abs_xx
        max_abs_xx = absolut;
    end
    delta = absolut/(a_xx(1)*p(1)+a_xx(2))*100;
    if delta>maxdelta_xx
        maxdelta_xx = delta;
    end
end
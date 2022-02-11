function calclp_dic(d, EL, ER, SL, SR)
    n = length(EL)
    ll = 0.0
    logmu = logmean(d)
    for i in 1:n
        if ER[i]<SL[i]
            ll += logmu+logsubexp(log(eqcdf(d,SR[i]-ER[i])-eqcdf(d,SL[i]-ER[i])),log(eqcdf(d,SR[i]-EL[i])-eqcdf(d,SL[i]-EL[i])))
        else 
            ll += logmu+logsubexp(log(eqcdf(d,SR[i]-ER[i])-(SL[i]-ER[i])),log(eqcdf(d,SR[i]-EL[i])-eqcdf(d,SL[i]-EL[i])))
        end
    end
    return -ll
end

function calclp_ic(d, EL, ER, S)
    n = length(S)
    ll = 0.0
    for i in 1:n
        ll += log(cdf(d,S[i]-ER[i])-cdf(d,S[i]-ER[i])))
        end
    end
    return -ll
end

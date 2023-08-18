quantile_update = function(q,p,n,obs_new){
  n_prime = function(p,n){
    c(0,
      ( (n-1)*p/2 ),
      ( (n-1)*p ),
      ( (n-1)*(1+p)/2 ),
      (n-1))
    }
  dn_prime = function(p){
    c(0,
       ( p/2 ),
       p,
       ( (1+p)/2 ),
       1)
  }
  k_calc = function(q,x){
    k=0
    if(x>=q[2] & x<q[3]){
      k=1
    }
    if(x>=q[3] & x<q[4]){
      k=2
    }
    if(x>=q[4]){
      k=3
    }
  }
  
  # Update quantiles
  for(j in 1:length(obs_new)){
    
    
    if(obs_new[j]<q[1]){
      q[1] = obs_new[j]
    }
    if(obs_new[j]>q[5]){
      q[5] = obs_new[j]
    }
  }
}
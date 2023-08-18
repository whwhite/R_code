mean_update = function(mean_old,n_old,obs_new){
  ( (mean_old*n_old) + sum(obs_new) ) / (n_old + length(obs_new))
}

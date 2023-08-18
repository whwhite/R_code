sd_update = function(sd_old,n_old,mean_old,obs_new){
  sqrt(var_update((sd_old^2),n_old,mean_old,obs_new))
}

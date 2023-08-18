var_update = function(var_old,n_old,mean_old,obs_new){
  for(i in 1:length(obs_new)){
    mean_new = mean_update(mean_old,(n_old+i-1),obs_new[i])
    var_new = ( (n_old+i-2)*var_old + (obs_new[i]-mean_new)*(obs_new[i]-mean_old) ) / (n_old+i-1)
    mean_old = mean_new
    var_old = var_new
  }
  
  var_new
}

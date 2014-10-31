# Avoid complicated ifs #

## Not so good ##
    public void onResume() {
     super.onResume();
    
     if (_setupDone && Globals.debugDownloadUpdates() && NetworkManager.isNetworkAvailable(getBaseContext())) {
      restartIfContentUpdated();
     }
    }

## Better ##

    public void onResume() {
	     super.onResume();
	     
	     if (!_setupDone) { return; }
	     if (!Globals.debugDownloadUpdates()) { return; }
	     if (!NetworkManager.isNetworkAvailable(getBaseContext())) { 
			return;
		 }
	    
	     restartIfContentUpdated();
    }
    


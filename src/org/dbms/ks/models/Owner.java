package org.dbms.ks.models;
import static org.dbms.ks.models.ColumnConstants.*;

import org.dbms.ks.util.DBUtil;
import org.json.JSONObject;

public class Owner extends BaseModel{
	
	private Owner(JSONObject json) throws ValidationException {
		super(json);
	}
	
	@Override
	protected void validate() throws ValidationException {
		
	}
	
	public static Owner load(JSONObject json) throws ValidationException{
		return new Owner(json);
	}
	
	public static Owner fetch(int ownerId) {
		return DBUtil.getFirst("get.owner", Owner.class, ownerId);
	}

	
	// GETTERS AND SETTERS
	
	public int getUserID() {
		return get(OWNER_UID, -1);
	}

	public int getOwnerID() {
		return get(OWNER_OID, -1);
	}

	public String getName() {
		return get(OWNER_USER_NAME);
	}
	
	Location location = null;
	public Location getLocation() {
		if(location == null){
			location = DBUtil.getFirst("get.location", Location.class, get(OWNER_LOCATION_ID));
		}
		return location;
	}
	
}
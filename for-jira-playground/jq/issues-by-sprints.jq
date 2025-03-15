def remove_nulls:
  map(
    if type == "object" then
      map_values(remove_nulls) | del(.. | nulls) # Recurse for objects
    elif type == "array" then
      map(remove_nulls) | del(.. | nulls) # Recurse for arrays
    else
      . # Keep other values
    end
  );

#.[]|.fields.customfield_10020|arrays|map(select(.state=="active"))
[.[]|.fields.customfield_10020|arrays|.[]|select(.state!="closed")|.name+","+(.id|tostring)]|unique|sort
#|group_by((.id|tostring)+","+.name)

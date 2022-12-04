# We need to write code that will query the meta data of an instance within AWS or Azure or GCP and provide a json formatted output.

## Solution
1. The solution uses Azure Resource graph to query VM Instances in a particular Azure tenant.
2. The output contains all the present instances with their respective metadata like sku, VM Name, properties etc.
3. The filtering can be done on the returned data based on where-object based on specif row/column.
4. Since the data returned is of format of hashtable and hence the instances can be filtered using dot property method for any key/property.


  
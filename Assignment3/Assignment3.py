from collections import deque
def function(obj,keys):
    try:
        if len(obj)==0:
            return "Nested object is empty"
        list_of_keys=keys.split("/")
        if (len(list_of_keys) == 0) or (len(keys) == 0):
            return "Key is an empty string"
        q=deque()
        q.append(obj)
        lookup={}
        while q:
            d=q.popleft()
            for k in d:
                if k not in lookup:
                    lookup[k]=d[k]
                if type(lookup[k]) is dict:
                    q.append(lookup[k])
        ans=""
        for key in list_of_keys:
            if key not in lookup:
                return "Key not present in nested object."
            else:
                ans=lookup[key]
        return ans
    except BaseException as e:
        return e
            
    
object = {"x":{"y":{"z":"a"}}}
key = "x/y/z"
print(function(object,key))

import yottadb

yottadb.set("^ingredients", ("flour", "rye"), "500|g|3.5")
yottadb.set("^ingredients", ("flour", "wheat"), "500|g|2.5")
yottadb.set("^ingredients", ("flour", "oat"), "500|g|6.5")

for ingredient_name in yottadb.subscripts("^ingredients", ("flour", "")):
    print(yottadb.get("^ingredients", ("flour", ingredient_name)).decode("utf-8"))

.class public Lnet/tsz/afinal/db/sqlite/SqlBuilder;
.super Ljava/lang/Object;
.source "SqlBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    .line 222
    .local v1, "table":Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "strSQL":Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 6
    .param p1, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/tsz/afinal/db/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v3

    .line 198
    .local v3, "table":Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v3}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v0

    .line 200
    .local v0, "id":Lnet/tsz/afinal/db/table/Id;
    if-nez p1, :cond_0

    .line 201
    new-instance v4, Lnet/tsz/afinal/exception/DbException;

    const-string v5, "getDeleteSQL:idValue is null"

    invoke-direct {v4, v5}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "strSQL":Ljava/lang/StringBuffer;
    const-string v4, " WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    new-instance v1, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 208
    .local v1, "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 211
    return-object v1
.end method

.method public static buildDeleteSql(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 8
    .param p0, "entity"    # Ljava/lang/Object;

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v4

    .line 178
    .local v4, "table":Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v0

    .line 179
    .local v0, "id":Lnet/tsz/afinal/db/table/Id;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    .local v1, "idvalue":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 182
    new-instance v5, Lnet/tsz/afinal/exception/DbException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeleteSQL:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id value is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 184
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 185
    .local v3, "strSQL":Ljava/lang/StringBuffer;
    const-string v5, " WHERE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    new-instance v2, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 188
    .local v2, "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2, v1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 191
    return-object v2
.end method

.method public static buildInsertSql(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 9
    .param p0, "entity"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-static {p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 41
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v5, "strSQL":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 43
    .local v4, "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 45
    new-instance v4, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    .end local v4    # "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-direct {v4}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 47
    .restart local v4    # "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v6

    invoke-virtual {v6}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 55
    const-string v6, ") VALUES ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 58
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 62
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 67
    .end local v0    # "i":I
    .end local v3    # "length":I
    :cond_0
    return-object v4

    .line 50
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/KeyValue;

    .line 51
    .local v2, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    .end local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :cond_2
    const-string v6, "?,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static buildInsertSqlWithId(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 9
    .param p0, "entity"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-static {p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntityWithId(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v5, "strSQL":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 80
    .local v4, "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 82
    new-instance v4, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    .end local v4    # "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-direct {v4}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 84
    .restart local v4    # "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v6

    invoke-virtual {v6}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 92
    const-string v6, ") VALUES ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 95
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 99
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 104
    .end local v0    # "i":I
    .end local v3    # "length":I
    :cond_0
    return-object v4

    .line 87
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/KeyValue;

    .line 88
    .local v2, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :cond_2
    const-string v6, "?,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v8

    .line 373
    .local v8, "table":Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v1

    .line 374
    .local v1, "id":Lnet/tsz/afinal/db/table/Id;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    .local v7, "strSQL":Ljava/lang/StringBuffer;
    const-string v9, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const-string v9, " ( "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/Id;->getDataType()Ljava/lang/Class;

    move-result-object v4

    .line 380
    .local v4, "primaryClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v9, :cond_0

    const-class v9, Ljava/lang/Integer;

    if-eq v4, v9, :cond_0

    .line 381
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v9, :cond_0

    const-class v9, Ljava/lang/Long;

    if-ne v4, v9, :cond_1

    .line 382
    :cond_0
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    :goto_0
    iget-object v9, v8, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 390
    .local v6, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 405
    iget-object v9, v8, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 406
    .local v3, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 411
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 412
    const-string v9, " )"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 384
    .end local v3    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    .end local v6    # "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    :cond_1
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " TEXT PRIMARY KEY,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 390
    .restart local v6    # "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/Property;

    .line 391
    .local v5, "property":Lnet/tsz/afinal/db/table/Property;
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/Property;->getDataType()Ljava/lang/Class;

    move-result-object v0

    .line 393
    .local v0, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_3

    const-class v10, Ljava/lang/Integer;

    if-eq v0, v10, :cond_3

    .line 394
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_3

    const-class v10, Ljava/lang/Long;

    if-ne v0, v10, :cond_5

    .line 395
    :cond_3
    const-string v10, " INTEGER"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    :cond_4
    :goto_3
    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 396
    :cond_5
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_6

    const-class v10, Ljava/lang/Float;

    if-eq v0, v10, :cond_6

    .line 397
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_6

    const-class v10, Ljava/lang/Double;

    if-ne v0, v10, :cond_7

    .line 398
    :cond_6
    const-string v10, " REAL"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 399
    :cond_7
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_8

    const-class v10, Ljava/lang/Boolean;

    if-ne v0, v10, :cond_4

    .line 400
    :cond_8
    const-string v10, " NUMERIC"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 406
    .end local v0    # "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "property":Lnet/tsz/afinal/db/table/Property;
    .restart local v3    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 407
    .local v2, "manyToOne":Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 408
    const-string v11, " INTEGER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 409
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method private static getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 423
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 424
    .local v0, "sbSQL":Ljava/lang/StringBuffer;
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/util/Date;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/sql/Date;

    if-eqz v1, :cond_1

    .line 425
    :cond_0
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 427
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/tsz/afinal/db/table/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v7

    .line 112
    .local v7, "table":Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v7}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v8

    invoke-virtual {v8, p0}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "idvalue":Ljava/lang/Object;
    instance-of v8, v0, Ljava/lang/Integer;

    if-nez v8, :cond_0

    .line 115
    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 116
    new-instance v2, Lnet/tsz/afinal/db/table/KeyValue;

    invoke-virtual {v7}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v8

    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .local v2, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    :cond_0
    iget-object v8, v7, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 123
    .local v6, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 130
    iget-object v8, v7, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 131
    .local v4, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 136
    return-object v1

    .line 123
    .end local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/Property;

    .line 124
    .local v5, "property":Lnet/tsz/afinal/db/table/Property;
    invoke-static {v5, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 125
    .restart local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_1

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    .end local v5    # "property":Lnet/tsz/afinal/db/table/Property;
    .restart local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 132
    .local v3, "many":Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-static {v3, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 133
    .restart local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getSaveKeyValueListByEntityWithId(Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/tsz/afinal/db/table/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v7

    .line 144
    .local v7, "table":Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v7}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v8

    invoke-virtual {v8, p0}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    .local v0, "idvalue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 147
    new-instance v2, Lnet/tsz/afinal/db/table/KeyValue;

    invoke-virtual {v7}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v8

    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    .local v2, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    :cond_0
    iget-object v8, v7, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 153
    .local v6, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 160
    iget-object v8, v7, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 161
    .local v4, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 166
    return-object v1

    .line 153
    .end local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/Property;

    .line 154
    .local v5, "property":Lnet/tsz/afinal/db/table/Property;
    invoke-static {v5, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 155
    .restart local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_1

    .line 156
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    .end local v5    # "property":Lnet/tsz/afinal/db/table/Property;
    .restart local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 162
    .local v3, "many":Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-static {v3, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 163
    .restart local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    .line 244
    .local v1, "table":Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "strSQL":Ljava/lang/StringBuffer;
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v2

    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    .line 272
    .local v1, "table":Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "strSQL":Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 5
    .param p1, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/tsz/afinal/db/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v2

    .line 254
    .local v2, "table":Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "strSQL":Ljava/lang/StringBuffer;
    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v4

    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    new-instance v0, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 258
    .local v0, "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 261
    return-object v0
.end method

.method private static getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 13
    .param p0, "entity"    # Ljava/lang/Object;

    .prologue
    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v9

    .line 286
    .local v9, "table":Lnet/tsz/afinal/db/table/TableInfo;
    invoke-virtual {v9}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v10

    invoke-virtual {v10, p0}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, "idvalue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 289
    new-instance v10, Lnet/tsz/afinal/exception/DbException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "this entity["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\'s id value is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 292
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    iget-object v10, v9, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 295
    .local v6, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 302
    iget-object v10, v9, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 303
    .local v4, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 308
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    :cond_3
    const/4 v7, 0x0

    .line 322
    :goto_2
    return-object v7

    .line 295
    .end local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/Property;

    .line 296
    .local v5, "property":Lnet/tsz/afinal/db/table/Property;
    invoke-static {v5, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 297
    .local v2, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_1

    .line 298
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    .end local v5    # "property":Lnet/tsz/afinal/db/table/Property;
    .restart local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 304
    .local v3, "many":Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-static {v3, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v2

    .line 305
    .restart local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    .end local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    .end local v3    # "many":Lnet/tsz/afinal/db/table/ManyToOne;
    :cond_6
    new-instance v7, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v7}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 311
    .local v7, "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v10, "UPDATE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 312
    .local v8, "strSQL":Ljava/lang/StringBuffer;
    invoke-virtual {v9}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const-string v10, " SET "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 318
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 319
    const-string v10, " WHERE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v9}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v11

    invoke-virtual {v11}, Lnet/tsz/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v7, v0}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/KeyValue;

    .line 315
    .restart local v2    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "=?,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {v2}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/SqlInfo;
    .locals 12
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "strWhere"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v8

    .line 332
    .local v8, "table":Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    iget-object v9, v8, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 336
    .local v5, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/Property;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 342
    iget-object v9, v8, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 343
    .local v3, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 348
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 349
    :cond_2
    new-instance v9, Lnet/tsz/afinal/exception/DbException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "this entity["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] has no property"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 336
    .end local v3    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/tsz/afinal/db/table/Property;

    .line 337
    .local v4, "property":Lnet/tsz/afinal/db/table/Property;
    invoke-static {v4, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v1

    .line 338
    .local v1, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    .end local v1    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    .end local v4    # "property":Lnet/tsz/afinal/db/table/Property;
    .restart local v3    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 344
    .local v2, "many":Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-static {v2, p0}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;

    move-result-object v1

    .line 345
    .restart local v1    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    .end local v1    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    .end local v2    # "many":Lnet/tsz/afinal/db/table/ManyToOne;
    :cond_5
    new-instance v6, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v6}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 353
    .local v6, "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, "UPDATE "

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 354
    .local v7, "strSQL":Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const-string v9, " SET "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 360
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 362
    const-string v9, " WHERE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 365
    return-object v6

    .line 356
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/tsz/afinal/db/table/KeyValue;

    .line 357
    .restart local v1    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=?,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static manyToOne2KeyValue(Lnet/tsz/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;
    .locals 6
    .param p0, "many"    # Lnet/tsz/afinal/db/table/ManyToOne;
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "manycolumn":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 452
    .local v2, "manyobject":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v4, v5, :cond_1

    .line 455
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v4

    check-cast v2, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    .end local v2    # "manyobject":Ljava/lang/Object;
    invoke-virtual {v2}, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 459
    .local v3, "manyvalue":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 460
    new-instance v0, Lnet/tsz/afinal/db/table/KeyValue;

    .end local v0    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-direct {v0, v1, v3}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 464
    .end local v3    # "manyvalue":Ljava/lang/Object;
    .restart local v0    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    :cond_0
    return-object v0

    .line 457
    .restart local v2    # "manyobject":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "manyvalue":Ljava/lang/Object;
    goto :goto_0
.end method

.method private static property2KeyValue(Lnet/tsz/afinal/db/table/Property;Ljava/lang/Object;)Lnet/tsz/afinal/db/table/KeyValue;
    .locals 4
    .param p0, "property"    # Lnet/tsz/afinal/db/table/Property;
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "pcolumn":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/db/table/Property;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 438
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 439
    new-instance v0, Lnet/tsz/afinal/db/table/KeyValue;

    .end local v0    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-direct {v0, v1, v2}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    .restart local v0    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    :cond_0
    :goto_0
    return-object v0

    .line 441
    :cond_1
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    new-instance v0, Lnet/tsz/afinal/db/table/KeyValue;

    .end local v0    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {p0}, Lnet/tsz/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lnet/tsz/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    goto :goto_0
.end method

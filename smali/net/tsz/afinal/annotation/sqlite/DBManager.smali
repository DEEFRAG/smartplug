.class public Lnet/tsz/afinal/annotation/sqlite/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# instance fields
.field public final FIELD_ID:Ljava/lang/String;

.field public final FIELD_NUM:Ljava/lang/String;

.field public final FIELD_STATE:Ljava/lang/String;

.field public final FIELD_TEXT:Ljava/lang/String;

.field public final FIELD_TIME:Ljava/lang/String;

.field public final FIELD_TITLE:Ljava/lang/String;

.field public final FIELD_TYPE:Ljava/lang/String;

.field public final FIELD_WORD:Ljava/lang/String;

.field private final TABLE_NAME:Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private helper:Lnet/tsz/afinal/annotation/sqlite/dbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "smartwifi_device_list"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->TABLE_NAME:Ljava/lang/String;

    .line 12
    const-string v0, "_id"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->FIELD_ID:Ljava/lang/String;

    .line 13
    const-string v0, "mac"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->FIELD_TITLE:Ljava/lang/String;

    .line 14
    const-string v0, "ip"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->FIELD_TEXT:Ljava/lang/String;

    .line 15
    const-string v0, "port"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->FIELD_NUM:Ljava/lang/String;

    .line 16
    const-string v0, "time"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->FIELD_TIME:Ljava/lang/String;

    .line 17
    const-string v0, "state"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->FIELD_STATE:Ljava/lang/String;

    .line 18
    const-string v0, "type"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->FIELD_TYPE:Ljava/lang/String;

    .line 19
    const-string v0, "word"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->FIELD_WORD:Ljava/lang/String;

    .line 21
    new-instance v0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;

    invoke-direct {v0, p1}, Lnet/tsz/afinal/annotation/sqlite/dbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->helper:Lnet/tsz/afinal/annotation/sqlite/dbHelper;

    .line 22
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->helper:Lnet/tsz/afinal/annotation/sqlite/dbHelper;

    invoke-virtual {v0}, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method


# virtual methods
.method public cleanNewDevice()V
    .locals 6

    .prologue
    .line 26
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 27
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "smartwifi_device_list"

    const-string v2, "state LIKE ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\'%new%\'"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 29
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 30
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 95
    :cond_0
    return-void
.end method

.method public delete(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 60
    iget-object v2, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 61
    const-string v0, "_id=?"

    .line 62
    .local v0, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 64
    .local v1, "whereValue":[Ljava/lang/String;
    iget-object v2, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "smartwifi_device_list"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 66
    iget-object v2, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 67
    return-void
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 6
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "Title"    # Ljava/lang/String;
    .param p3, "Text"    # Ljava/lang/String;
    .param p4, "state"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "word"    # Ljava/lang/String;
    .param p7, "nowtime"    # I

    .prologue
    .line 43
    iget-object v3, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "mac"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "ip"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "port"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "time"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string v3, "state"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "type"

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "word"

    invoke-virtual {v0, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "smartwifi_device_list"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 53
    .local v1, "row":J
    iget-object v3, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 54
    iget-object v3, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 55
    return-wide v1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public select()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 35
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "smartwifi_device_list"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 36
    .local v8, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 37
    iget-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 38
    return-object v8
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "Title"    # Ljava/lang/String;
    .param p4, "Text"    # Ljava/lang/String;
    .param p5, "state"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "word"    # Ljava/lang/String;
    .param p8, "nowtime"    # I

    .prologue
    .line 71
    iget-object v3, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 72
    const-string v1, "mac=?"

    .line 73
    .local v1, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 74
    .local v2, "whereValue":[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "mac"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "ip"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "port"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "time"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v3, "state"

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "type"

    invoke-virtual {v0, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "word"

    invoke-virtual {v0, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "smartwifi_device_list"

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 84
    iget-object v3, p0, Lnet/tsz/afinal/annotation/sqlite/DBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 85
    return-void
.end method

.class public Lnet/tsz/afinal/annotation/sqlite/dbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "dbHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "smartwifi_device_db3"

.field private static final DATABASE_VERSION:I = 0x1


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

.field db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v0, "smartwifi_device_db3"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 10
    const-string v0, "smartwifi_device_list"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->TABLE_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "_id"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->FIELD_ID:Ljava/lang/String;

    .line 12
    const-string v0, "mac"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->FIELD_TITLE:Ljava/lang/String;

    .line 13
    const-string v0, "ip"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->FIELD_TEXT:Ljava/lang/String;

    .line 14
    const-string v0, "port"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->FIELD_NUM:Ljava/lang/String;

    .line 15
    const-string v0, "time"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->FIELD_TIME:Ljava/lang/String;

    .line 16
    const-string v0, "state"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->FIELD_STATE:Ljava/lang/String;

    .line 17
    const-string v0, "type"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->FIELD_TYPE:Ljava/lang/String;

    .line 18
    const-string v0, "word"

    iput-object v0, p0, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->FIELD_WORD:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 27
    const-string v0, "Create table smartwifi_device_list(_id integer primary key autoincrement,port text, mac text , ip text, state text, type text, word text, time INTEGER);"

    .line 30
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    const-string v1, "create unique index uk_t1 on smartwifi_device_list (mac);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 37
    const-string v0, " DROP TABLE IF EXISTS smartwifi_device_list"

    .line 38
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/annotation/sqlite/dbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    return-void
.end method

.class Lorg/jivesoftware/smack/Roster$2;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/Roster;

.field final synthetic val$connectionListener:Lorg/jivesoftware/smack/ConnectionListener;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster$2;->this$0:Lorg/jivesoftware/smack/Roster;

    iput-object p2, p0, Lorg/jivesoftware/smack/Roster$2;->val$connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$2;->this$0:Lorg/jivesoftware/smack/Roster;

    # getter for: Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$300(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$2;->this$0:Lorg/jivesoftware/smack/Roster;

    # getter for: Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$300(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/Roster$2;->val$connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 151
    :cond_0
    return-void
.end method

.class Lorg/jivesoftware/smack/Roster$1;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "Roster.java"


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


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Roster;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster$1;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$1;->this$0:Lorg/jivesoftware/smack/Roster;

    # invokes: Lorg/jivesoftware/smack/Roster;->setOfflinePresences()V
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$200(Lorg/jivesoftware/smack/Roster;)V

    .line 133
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$1;->this$0:Lorg/jivesoftware/smack/Roster;

    # invokes: Lorg/jivesoftware/smack/Roster;->setOfflinePresences()V
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$200(Lorg/jivesoftware/smack/Roster;)V

    .line 138
    return-void
.end method

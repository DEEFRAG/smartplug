.class Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->hide()V

    return-void
.end method

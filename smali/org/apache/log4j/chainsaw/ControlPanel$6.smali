.class Lorg/apache/log4j/chainsaw/ControlPanel$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

.field private final val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$6;->this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/ControlPanel$6;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$6;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->clear()V

    return-void
.end method

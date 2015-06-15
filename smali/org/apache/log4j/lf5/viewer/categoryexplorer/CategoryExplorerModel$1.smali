.class Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

.field private final val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;->val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;->val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v0, v1}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    return-void
.end method

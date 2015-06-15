.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;
.super Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;


# static fields
.field private static final serialVersionUID:J = -0x5495189194b32de6L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckBox()Ljavax/swing/JCheckBox;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    return-object v0
.end method

.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 1

    invoke-super/range {p0 .. p7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    move-result-object v0

    return-object v0
.end method

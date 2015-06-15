.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;


# static fields
.field public static final FATAL_CHILDREN:Ljava/awt/Color;

.field protected static _sat:Ljavax/swing/ImageIcon; = null

.field private static final serialVersionUID:J = -0x53ea340b672cefe8L


# instance fields
.field protected _checkBox:Ljavax/swing/JCheckBox;

.field protected _panel:Ljavax/swing/JPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xbd

    const/16 v2, 0x71

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->FATAL_CHILDREN:Ljava/awt/Color;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V

    new-instance v0, Ljavax/swing/JCheckBox;

    invoke-direct {v0}, Ljavax/swing/JCheckBox;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    const-string v1, "Tree.textBackground"

    invoke-static {v1}, Ljavax/swing/UIManager;->getColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JComponent;->setBackground(Ljava/awt/Color;)V

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    if-nez v0, :cond_0

    const-string v0, "/org/apache/log4j/lf5/viewer/images/channelexplorer_satellite.gif"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    new-instance v1, Ljavax/swing/ImageIcon;

    invoke-direct {v1, v0}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    :cond_0
    invoke-virtual {p0, v2}, Ljavax/swing/JComponent;->setOpaque(Z)V

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v0, v2}, Ljavax/swing/JComponent;->setOpaque(Z)V

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v0, v2}, Ljavax/swing/JComponent;->setOpaque(Z)V

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1, v2, v2, v2}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v0, p0}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    return-void
.end method


# virtual methods
.method protected buildToolTip(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " contains a total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTotalNumberOfRecords()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " LogRecords."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " Right-click for more info."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckBoxOffset()Ljava/awt/Dimension;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 3

    move-object v0, p2

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    if-nez p6, :cond_2

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JComponent;->setVisible(Z)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->buildToolTip(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v2, v1}, Ljavax/swing/JComponent;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->FATAL_CHILDREN:Ljava/awt/Color;

    invoke-virtual {p0, v1}, Ljavax/swing/JComponent;->setForeground(Ljava/awt/Color;)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalRecords()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setForeground(Ljava/awt/Color;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JComponent;->setVisible(Z)V

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/swing/AbstractButton;->setSelected(Z)V

    goto :goto_0
.end method

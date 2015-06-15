.class public Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;
.super Ljava/lang/Object;


# static fields
.field private static final BLUE:Ljava/lang/String; = "blue"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final COLORLEVEL:Ljava/lang/String; = "colorlevel"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "lf5_configuration.xml"

.field private static final EXPANDED:Ljava/lang/String; = "expanded"

.field private static final FIRST_CATEGORY_NAME:Ljava/lang/String; = "Categories"

.field private static final GREEN:Ljava/lang/String; = "green"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NDCTEXTFILTER:Ljava/lang/String; = "searchtext"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final RED:Ljava/lang/String; = "red"

.field private static final SELECTED:Ljava/lang/String; = "selected"


# instance fields
.field private _monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field private _table:Lorg/apache/log4j/lf5/viewer/LogTable;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/LogTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->load()V

    return-void
.end method

.method private closeConfigurationXML(Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, "</configuration>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private exportLogLevelColorXMLElement(Ljava/lang/String;Ljava/awt/Color;Ljava/lang/StringBuffer;)V
    .locals 2

    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "colorlevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "red"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "green"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "blue"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private exportLogLevelXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .locals 2

    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "selected"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private exportLogTableColumnXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .locals 2

    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "column"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "selected"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private exportXMLElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljavax/swing/tree/TreePath;Ljava/lang/StringBuffer;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    const-string v1, "\t<"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "name"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "path"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->treePathToString(Ljavax/swing/tree/TreePath;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "expanded"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljavax/swing/JTree;->isExpanded(Ljavax/swing/tree/TreePath;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "selected"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"/>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private openConfigurationXML(Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, "<configuration>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private openXMLDocument(Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private processConfigurationNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljava/lang/StringBuffer;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportXMLElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljavax/swing/tree/TreePath;Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processLogLevelColors(Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 3

    const-string v0, "\t<loglevelcolors>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Color;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogLevelColorXMLElement(Ljava/lang/String;Ljava/awt/Color;Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_0
    const-string v0, "\t</loglevelcolors>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private processLogLevels(Ljava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 3

    const-string v0, "\t<loglevels>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljavax/swing/AbstractButton;->isSelected()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogLevelXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_0

    :cond_0
    const-string v0, "\t</loglevels>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private processLogRecordFilter(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2

    const-string v0, "\t<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "searchtext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "/>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private processLogTableColumns(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 3

    const-string v0, "\t<logtablecolumns>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljavax/swing/AbstractButton;->isSelected()Z

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogTableColumnXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_0

    :cond_0
    const-string v0, "\t</logtablecolumns>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static treePathToString(Ljavax/swing/tree/TreePath;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljavax/swing/tree/TreePath;->getPath()[Ljava/lang/Object;

    move-result-object v4

    move v1, v2

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_1

    aget-object v0, v4, v1

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    if-le v1, v2, :cond_0

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected collapseTree()V
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/swing/JTree;->getRowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Ljavax/swing/JTree;->collapseRow(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected deleteConfigurationFile()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " because a security violation occured."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getFilename()Ljava/lang/String;
    .locals 3

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "lf5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lf5_configuration.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected load()V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processRecordFilter(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processCategories(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevels(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevelColors(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogTableColumns(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable process configuration file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". Error Message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processCategories(Lorg/w3c/dom/Document;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v6

    const-string v0, "category"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v3, "name"

    invoke-virtual {p0, v0, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Categories"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_1
    if-lt v4, v0, :cond_3

    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    new-instance v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    const-string v9, "path"

    invoke-virtual {p0, v8, v9}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v9

    const-string v3, "selected"

    invoke-virtual {p0, v8, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "true"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    invoke-virtual {v9, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    const-string v3, "expanded"

    invoke-virtual {p0, v8, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "true"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_0
    invoke-virtual {v6, v9}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljavax/swing/JTree;->expandPath(Ljavax/swing/tree/TreePath;)V

    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected processLogLevelColors(Lorg/w3c/dom/Document;)V
    .locals 7

    const-string v0, "colorlevel"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLogLevelColorMap()Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v3

    const-string v4, "red"

    invoke-virtual {p0, v2, v4}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "green"

    invoke-virtual {p0, v2, v5}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "blue"

    invoke-virtual {p0, v2, v6}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v6, Ljava/awt/Color;

    invoke-direct {v6, v4, v5, v2}, Ljava/awt/Color;-><init>(III)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v3, v6}, Lorg/apache/log4j/lf5/LogLevel;->setLogLevelColorMap(Lorg/apache/log4j/lf5/LogLevel;Ljava/awt/Color;)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected processLogLevels(Lorg/w3c/dom/Document;)V
    .locals 6

    const-string v0, "level"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v0, "name"

    invoke-virtual {p0, v4, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    const-string v5, "selected"

    invoke-virtual {p0, v4, v5}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljavax/swing/AbstractButton;->setSelected(Z)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected processLogTableColumns(Lorg/w3c/dom/Document;)V
    .locals 8

    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItems()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v0, "name"

    invoke-virtual {p0, v5, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    const-string v7, "selected"

    invoke-virtual {p0, v5, v7}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljavax/swing/AbstractButton;->setSelected(Z)V

    invoke-virtual {v0}, Ljavax/swing/AbstractButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->setDetailedView()V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0, v4}, Lorg/apache/log4j/lf5/viewer/LogTable;->setView(Ljava/util/List;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected processRecordFilter(Lorg/w3c/dom/Document;)V
    .locals 2

    const-string v0, "searchtext"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setNDCLogRecordFilter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->deleteConfigurationFile()V

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->collapseTree()V

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->selectAllNodes()V

    return-void
.end method

.method public save()V
    .locals 4

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->openXMLDocument(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->openConfigurationXML(Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getNDCTextFilter()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogRecordFilter(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevels(Ljava/util/Map;Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLogLevelColorMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevelColors(Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuffer;)V

    invoke-static {}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLogTableColumns()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogTableColumns(Ljava/util/List;Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processConfigurationNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->closeConfigurationXML(Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->store(Ljava/lang/String;)V

    return-void
.end method

.method protected selectAllNodes()V
    .locals 3

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected store(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

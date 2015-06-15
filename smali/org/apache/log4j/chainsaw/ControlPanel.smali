.class Lorg/apache/log4j/chainsaw/ControlPanel;
.super Ljavax/swing/JPanel;


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.ControlPanel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ControlPanel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->LOG:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 9

    const/16 v8, 0xd

    const/4 v4, 0x1

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    const-string v0, "Controls: "

    invoke-static {v0}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setBorder(Ljavax/swing/border/Border;)V

    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    invoke-virtual {p0, v0}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    iput v7, v1, Ljava/awt/GridBagConstraints;->ipadx:I

    iput v7, v1, Ljava/awt/GridBagConstraints;->ipady:I

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridx:I

    iput v8, v1, Ljava/awt/GridBagConstraints;->anchor:I

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JLabel;

    const-string v3, "Filter Level:"

    invoke-direct {v2, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JLabel;

    const-string v3, "Filter Thread:"

    invoke-direct {v2, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JLabel;

    const-string v3, "Filter Logger:"

    invoke-direct {v2, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JLabel;

    const-string v3, "Filter NDC:"

    invoke-direct {v2, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JLabel;

    const-string v3, "Filter Message:"

    invoke-direct {v2, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Ljava/awt/GridBagConstraints;->weightx:D

    iput v4, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/16 v2, 0x11

    iput v2, v1, Ljava/awt/GridBagConstraints;->anchor:I

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/apache/log4j/Level;

    sget-object v3, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    aput-object v3, v2, v5

    sget-object v3, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    aput-object v3, v2, v4

    sget-object v3, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    aput-object v3, v2, v6

    const/4 v3, 0x3

    sget-object v4, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    aput-object v4, v2, v3

    sget-object v3, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    aput-object v3, v2, v7

    new-instance v3, Ljavax/swing/JComboBox;

    invoke-direct {v3, v2}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lorg/apache/log4j/chainsaw/MyTableModel;->setPriorityFilter(Lorg/apache/log4j/Priority;)V

    invoke-virtual {v0, v3, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v3, v5}, Ljavax/swing/JComboBox;->setEditable(Z)V

    new-instance v2, Lorg/apache/log4j/chainsaw/ControlPanel$1;

    invoke-direct {v2, p0, p1, v3}, Lorg/apache/log4j/chainsaw/ControlPanel$1;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JComboBox;)V

    invoke-virtual {v3, v2}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    iput v6, v1, Ljava/awt/GridBagConstraints;->fill:I

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JTextField;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v3

    new-instance v4, Lorg/apache/log4j/chainsaw/ControlPanel$2;

    invoke-direct {v4, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$2;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v3, v4}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JTextField;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v3

    new-instance v4, Lorg/apache/log4j/chainsaw/ControlPanel$3;

    invoke-direct {v4, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$3;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v3, v4}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JTextField;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v3

    new-instance v4, Lorg/apache/log4j/chainsaw/ControlPanel$4;

    invoke-direct {v4, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$4;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v3, v4}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JTextField;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v3

    new-instance v4, Lorg/apache/log4j/chainsaw/ControlPanel$5;

    invoke-direct {v4, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$5;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v3, v4}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljava/awt/GridBagConstraints;->weightx:D

    iput v6, v1, Ljava/awt/GridBagConstraints;->fill:I

    iput v8, v1, Ljava/awt/GridBagConstraints;->anchor:I

    iput v6, v1, Ljava/awt/GridBagConstraints;->gridx:I

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Exit"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    sget-object v3, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Clear"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    new-instance v3, Lorg/apache/log4j/chainsaw/ControlPanel$6;

    invoke-direct {v3, p0, p1}, Lorg/apache/log4j/chainsaw/ControlPanel$6;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Pause"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x70

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    new-instance v3, Lorg/apache/log4j/chainsaw/ControlPanel$7;

    invoke-direct {v3, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$7;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JButton;)V

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

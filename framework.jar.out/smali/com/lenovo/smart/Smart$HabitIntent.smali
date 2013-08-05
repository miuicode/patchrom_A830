.class Lcom/lenovo/smart/Smart$HabitIntent;
.super Landroid/content/Intent;
.source "Smart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/smart/Smart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HabitIntent"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "habitType"

    .prologue
    .line 591
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 592
    const-string v0, "com.lenovo.ue.application"

    invoke-super {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v0, "SMART_TYPE"

    const-string v1, "habit"

    invoke-super {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v0, "HABIT_TYPE"

    invoke-super {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    return-void
.end method

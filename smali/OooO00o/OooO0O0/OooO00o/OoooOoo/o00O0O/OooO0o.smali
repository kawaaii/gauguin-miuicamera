.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/o00O0O/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/o00O0O/OooO0o;->OooO00o:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/o00O0O/OooO0o;->OooO00o:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->OooO00o(Landroid/content/SharedPreferences;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

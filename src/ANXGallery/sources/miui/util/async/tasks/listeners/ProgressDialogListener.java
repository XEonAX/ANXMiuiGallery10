package miui.util.async.tasks.listeners;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import miui.app.ProgressDialog;
import miui.util.async.Task;
import miui.util.async.TaskManager;

public class ProgressDialogListener extends BaseTaskListener {
    static final LinkedHashMap<String, ProgressDialogListener> LG = new LinkedHashMap();
    int Dw = 0;
    int Dx = 0;
    int Dy = 0;
    WeakReference<Task<?>> LD;
    ProgressDialogFragment LH;
    FragmentManager bn;
    int fh = 0;
    boolean mCancelable = false;
    CharSequence mMessage = null;
    CharSequence mTitle = null;
    int wK = 0;
    int wZ = 0;
    boolean xj = false;

    public static class ProgressDialogFragment extends DialogFragment implements OnClickListener {
        private ProgressDialogListener LJ;

        void setIndeterminate(boolean z) {
            Dialog dialog = getDialog();
            if (dialog instanceof ProgressDialog) {
                ((ProgressDialog) dialog).setIndeterminate(z);
            }
        }

        void setProgress(int i) {
            Dialog dialog = getDialog();
            if (dialog instanceof ProgressDialog) {
                ((ProgressDialog) dialog).setProgress(i);
            }
        }

        void aa(int i) {
            Dialog dialog = getDialog();
            if (dialog instanceof ProgressDialog) {
                ((ProgressDialog) dialog).setMax(i);
            }
        }

        public void onSaveInstanceState(Bundle bundle) {
            super.onSaveInstanceState(bundle);
            if (this.LJ != null) {
                this.LJ.LH = null;
                this.LJ.bn = null;
                this.LJ = null;
            }
        }

        public void onResume() {
            super.onResume();
            this.LJ = (ProgressDialogListener) ProgressDialogListener.LG.get(getArguments().getString("ProgressDialogListener"));
            if (this.LJ == null) {
                FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
                beginTransaction.remove(this);
                beginTransaction.commit();
                return;
            }
            this.LJ.LH = this;
            this.LJ.bn = getFragmentManager();
            WeakReference weakReference = this.LJ.LD;
            Task task = null;
            if (weakReference != null) {
                task = (Task) weakReference.get();
            }
            if (task == null || !task.isRunning()) {
                dismiss();
                ProgressDialogListener.LG.remove(getArguments().getString("ProgressDialogListener"));
            }
        }

        public void onCancel(DialogInterface dialogInterface) {
            if (this.LJ != null && this.LJ.mCancelable) {
                WeakReference weakReference = this.LJ.LD;
                if (weakReference != null) {
                    Task task = (Task) weakReference.get();
                    if (task != null) {
                        task.cancel();
                    }
                }
            }
            super.onCancel(dialogInterface);
        }

        public Dialog onCreateDialog(Bundle bundle) {
            if (this.LJ == null) {
                return super.onCreateDialog(bundle);
            }
            Dialog progressDialog = new ProgressDialog(getActivity(), this.LJ.wK);
            if (this.LJ.Dw != 0) {
                progressDialog.setTitle(this.LJ.Dw);
            } else {
                progressDialog.setTitle(this.LJ.mTitle);
            }
            if (this.LJ.Dx != 0) {
                progressDialog.setTitle(this.LJ.Dx);
            } else {
                progressDialog.setMessage(this.LJ.mMessage);
            }
            progressDialog.setProgressStyle(this.LJ.wZ);
            progressDialog.setIndeterminate(this.LJ.xj);
            if (this.LJ.xj) {
                progressDialog.setMax(this.LJ.Dy);
                progressDialog.setProgress(this.LJ.fh);
            }
            if (this.LJ.mCancelable) {
                progressDialog.setButton(-2, progressDialog.getContext().getText(17039360), (OnClickListener) this);
                progressDialog.setCancelable(true);
            } else {
                progressDialog.setButton(-2, null, (OnClickListener) null);
                progressDialog.setCancelable(false);
            }
            return progressDialog;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            onCancel(dialogInterface);
        }
    }

    public ProgressDialogListener(FragmentManager fragmentManager) {
        this.bn = fragmentManager;
    }

    public ProgressDialogListener setTheme(int i) {
        this.wK = i;
        return this;
    }

    public ProgressDialogListener setTitle(int i) {
        this.Dw = i;
        this.mTitle = null;
        return this;
    }

    public ProgressDialogListener setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.Dw = 0;
        return this;
    }

    public ProgressDialogListener setMessage(int i) {
        this.Dx = i;
        this.mMessage = null;
        return this;
    }

    public ProgressDialogListener setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
        this.Dx = 0;
        return this;
    }

    public ProgressDialogListener setCancelable(boolean z) {
        this.mCancelable = z;
        return this;
    }

    public ProgressDialogListener setProgressStyle(int i) {
        this.wZ = i;
        return this;
    }

    public ProgressDialogListener setIndeterminate(boolean z) {
        this.xj = z;
        return this;
    }

    public ProgressDialogListener setMaxProgress(int i) {
        this.Dy = i;
        return this;
    }

    public void onPrepare(TaskManager taskManager, Task<?> task) {
        this.LD = new WeakReference(task);
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ProgressDialogListener@");
            stringBuilder.append(hashCode());
            String stringBuilder2 = stringBuilder.toString();
            LG.put(stringBuilder2, this);
            this.LH = new ProgressDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString("ProgressDialogListener", stringBuilder2);
            this.LH.setArguments(bundle);
            this.LH.show(this.bn, stringBuilder2);
        } catch (Throwable e) {
            Log.w("ProgressDialogListener", "cannot show dialog", e);
            this.LH = null;
            this.bn = null;
            task.removeListener(this);
        }
    }

    public void onProgress(TaskManager taskManager, Task<?> task, int i, int i2) {
        ProgressDialogFragment progressDialogFragment = this.LH;
        if (i >= 0) {
            if (this.xj) {
                setIndeterminate(false);
                if (progressDialogFragment != null) {
                    progressDialogFragment.setIndeterminate(this.xj);
                }
            }
            if (this.Dy != i) {
                setMaxProgress(i);
                if (progressDialogFragment != null) {
                    progressDialogFragment.aa(this.Dy);
                }
            }
            if (this.fh != i2) {
                this.fh = i2;
                if (progressDialogFragment != null) {
                    progressDialogFragment.setProgress(this.fh);
                }
            }
        } else if (!this.xj) {
            setIndeterminate(true);
            if (progressDialogFragment != null) {
                progressDialogFragment.setIndeterminate(this.xj);
            }
        }
    }

    public void onFinalize(TaskManager taskManager, Task<?> task) {
        if (this.LH != null) {
            this.LH.dismiss();
        }
        LinkedHashMap linkedHashMap = LG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ProgressDialogListener@");
        stringBuilder.append(hashCode());
        linkedHashMap.remove(stringBuilder.toString());
    }
}

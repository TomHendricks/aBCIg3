# load mne example data, smallest set for efficiency

import mne


def load_example_raw() -> mne.io.BaseRaw:
    # Load MNE sample data
    sample_data_folder = mne.datasets.sample.data_path()
    raw_fname = sample_data_folder / "MEG" / "sample" / "sample_audvis_raw.fif"
    events_fname = sample_data_folder / "MEG" / "sample" / "sample_audvis_raw-eve.fif"

    # Load and prepare data
    raw = mne.io.read_raw_fif(raw_fname, preload=True, verbose=False)

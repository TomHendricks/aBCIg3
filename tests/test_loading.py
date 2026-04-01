"""
Tests for the loading module.
"""
import pytest


def test_package_import():
    """Test that the package can be imported."""
    import abci_oss_example
    assert abci_oss_example.__version__ == "0.1.0"


def test_loading_function_exists():
    """Test that load_example_raw function exists."""
    from abci_oss_example import load_example_raw
    assert callable(load_example_raw)


# Note: We skip actually loading data to keep tests fast
# In a real project, you would test the actual functionality
@pytest.mark.skip(reason="Requires MNE sample data download")
def test_load_example_raw():
    """Test loading example raw data."""
    from abci_oss_example import load_example_raw
    raw = load_example_raw()
    assert raw is not None

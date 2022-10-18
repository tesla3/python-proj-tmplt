from mmm.example import mysterious_func
from mmm.ttorch import check_gpu

def test_mysterious_func_success():
    assert mysterious_func(2,3) == 2**2 * 3
    
def test_mysterious_func_fail():
    assert mysterious_func(2,3) == 2**3 * 3

def test_cuda():
    assert check_gpu() 

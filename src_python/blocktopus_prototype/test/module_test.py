import unittest
import sys

print("PATH: ", sys.path)
import blocktopus_prototype

class ModuleTest(unittest.TestCase):
    def smoke_test(self):
        self.assertEqual(blocktopus_prototype.SENTINEL, "SENTINEL")

if __name__ == "__main__":
    unittest.main()

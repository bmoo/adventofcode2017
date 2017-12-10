import unittest
import day2


class TestDayTwo(unittest.TestCase):

    def test_first_row(self):
        self.assertEqual(8, day2.solve_part_one('5 1 9 5'))

    def test_second_row(self):
        self.assertEqual(4, day2.solve_part_one('7 5 3  '))

    def test_third_row(self):
        self.assertEqual(6, day2.solve_part_one('2 4 6 8'))



if __name__ == '__main__':
    unittest.main()

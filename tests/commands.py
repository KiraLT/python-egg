from unittest import TestCase

from myegg.commands import run


class CommandsTestCase(TestCase):

    def test_run(self):
        self.assertEqual(run(), 'HELLO WORLD')

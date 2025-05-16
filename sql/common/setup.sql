CREATE TABLE json_table (entry TEXT, value JSON);

-- small JSON entry
INSERT INTO
  json_table (entry, value)
VALUES
  (
    'small',
    '{"key": "value"}'
  );

-- medium JSON entry
INSERT INTO
  json_table (entry, value)
VALUES
  (
    'medium',
    '[{
      "commit": "354419dd87cfdeb2f8d7e1ca4f9aca26e9641241",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sat Apr 12 11:13:17 2025 -0700",
      "message": "Fix-out-of-boundary-write-in-windowing-some-code-cleanup-documentation"
    },
    {
      "commit": "08661a7cb38001ddf451270f2fccd666747a80bc",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Fri Apr 11 19:37:43 2025 -0700",
      "message": "Add-windowing-functions"
    },
    {
      "commit": "9190c70b3cb8a36e9a4f609af2b699525969a392",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Tue Apr 1 16:33:35 2025 -0700",
      "message": "Some-code-cleanup-and-rearranging"
    },
    {
      "commit": "afd9e5ebb7cc0465d146bff5243bf4ced03542a4",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Mon Mar 31 11:40:00 2025 -0700",
      "message": "Added-start-procedures"
    },
    {
      "commit": "7b3996651791f7ad5047ef64dac5113ec6ab0bfa",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sat Mar 29 14:03:17 2025 -0700",
      "message": "Adds-SRF-support"
    },
    {
      "commit": "84f5b4173546d5a812c2f1230bd7ebe9a4f10e5d",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Tue Nov 12 11:17:20 2024 -0800",
      "message": "Adds-BigInt-support-and-tests"
    },
    {
      "commit": "4a618bebf95a5503c43a1e604b73cab91526ca06",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Mon Nov 11 14:29:59 2024 -0800",
      "message": "Adds-tests-for-RECORD"
    },
    {
      "commit": "e3c5c801263bde4cea38bdd5cea7296c79654610",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Thu Nov 7 22:19:46 2024 -0800",
      "message": "Update-Makefile-for-easier-linux-build"
    },
    {
      "commit": "53e6388f57cd7db69bdb8bc4e8505931ab41e71c",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Thu Nov 7 19:36:24 2024 -0800",
      "message": "Fix-some-memory-issues-that-were-masked-on-macos"
    },
    {
      "commit": "238b9b003713707d8c32ba07561980a819143dd4",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Wed Nov 6 11:26:37 2024 -0800",
      "message": "Update-Makefile"
    },
    {
      "commit": "1dca13dae8f9b919e0e898cdbc320a01073215e2",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Mon Oct 14 17:29:53 2024 -0700",
      "message": "Update-for-compilation-in-linux"
    },
    {
      "commit": "caae51dd241a0c4f1c6ea547d346a5f68a86b77e",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Oct 13 14:51:14 2024 -0700",
      "message": "Updated-for-postgres-17"
    },
    {
      "commit": "033cdce51adbcb54106b6a60f3269dc72200d15b",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Oct 13 13:28:04 2024 -0700",
      "message": "Clean-up-some-lint-checks"
    },
    {
      "commit": "bb6ed81cadb2f3827d3f09cc1bb1b681fe4e2b91",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Thu Oct 10 14:43:15 2024 -0700",
      "message": "Adds-more-documentation-to-the-code"
    },
    {
      "commit": "0ab54a3749e30ed3766ca3def809a82fa5b85a7b",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Wed Oct 9 20:44:25 2024 -0700",
      "message": "Update-quickjs-dependency-to-official-repo"
    },
    {
      "commit": "b446e46e2c1f94198403b4f149db87a247ff8779",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Wed Oct 9 19:05:20 2024 -0700",
      "message": "Add-pljs.find_function"
    },
    {
      "commit": "6aca2e337f774b99af42340afd950097b196ef00",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Wed Oct 9 18:14:49 2024 -0700",
      "message": "Add-in-procedure-tests"
    },
    {
      "commit": "6957d45d4718bb0bd6da2015f5b9d972a758d184",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Tue Oct 8 17:21:08 2024 -0700",
      "message": "Add-procedure-commit-rollback-support"
    },
    {
      "commit": "e4ec765f2c37aba4a360c672b203480d3f5f7310",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Tue Oct 8 14:57:51 2024 -0700",
      "message": "Fix-cache-keeping-a-copy-of-a-function-after-it-has-been-redefined"
    },
    {
      "commit": "d13ef0780138d3faeaea5b8ddb8f49ba1a9de55b",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Tue Oct 8 13:07:15 2024 -0700",
      "message": "Fix-INOUT-and-OUT-argument-modes"
    },
    {
      "commit": "91c333c7c47d686d1559e41fe7b5d423b7ae836a",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Mon Oct 7 20:10:51 2024 -0700",
      "message": "Fix-trigger-returns-and-handling"
    },
    {
      "commit": "f78cd4c6988ae49f75836d1d160ce54716ed897f",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Oct 6 20:22:54 2024 -0700",
      "message": "Update-for-0.8.1-release"
    },
    {
      "commit": "469dcff6309bbf88de24a819dccc552995498e1d",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Oct 6 20:13:40 2024 -0700",
      "message": "Doc-generation-helpers"
    },
    {
      "commit": "b80df43dc60d44bcb6bbe5ad45c6bfe0b360f12d",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Oct 6 20:13:17 2024 -0700",
      "message": "Cleans-up-a-bunch-of-warnings"
    },
    {
      "commit": "36ccebab2cbf17e0b4d6ecef1d36e06f2835a7ad",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Oct 6 20:11:37 2024 -0700",
      "message": "Implements-the-rest-of-the-caching-system"
    },
    {
      "commit": "0221e87f36a8f44ba02d6734dbd0c5a0bea976ec",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Sep 15 18:26:01 2024 -0700",
      "message": "update-makefile-for-better-compilation"
    },
    {
      "commit": "21f22971e325055941440b7983cfd1e3d49d41fe",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Wed Jan 24 08:33:51 2024 -0800",
      "message": "update-control-version"
    },
    {
      "commit": "74f32bc32e01718ccc67663479fd2bca9f5b5df7",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Wed Oct 4 07:53:31 2023 -0400",
      "message": "Updated-to-add-major-feature-functionality"
    },
    {
      "commit": "5db0994f8ae59d9c847892fc7bae821590eae670",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Thu Sep 7 20:45:02 2023 -0700",
      "message": "Add-support-for-compound-types-and-clean-up-linting"
    },
    {
      "commit": "4a7f3c51dd94c72503c5fba1b04601477defe82c",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Jun 4 20:35:14 2023 -0700",
      "message": "some-major-functionality"
    },
    {
      "commit": "321c6c0c9e41bf0402e020b2bc8675eef5db925d",
      "author": "Jerry Sievert <code@legitimatesounding.com>",
      "date": "Sun Feb 27 15:58:33 2022 -0800",
      "message": "cache-working"
    }]
'::JSON
  );


CREATE TABLE jsonb_table (entry TEXT, value JSONB);
INSERT INTO jsonb_table (entry, value) SELECT entry, value::JSONB FROM json_table;

# -*- mode: python ; coding: utf-8 -*-


a = Analysis(
    ['qforce'],
    pathex=[],
    binaries=[],
    datas=[('/home/daniel/QF/qforce/qforce', 'qforce'), ('/home/daniel/.local/lib/python3.8/site-packages/pulp', 'pulp')],
    hiddenimports=[],
    hookspath=['hook-ase', 'hook-sip'],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.datas,
    [],
    name='qforce',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    upx_exclude=[],
    runtime_tmpdir=None,
    console=True,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)

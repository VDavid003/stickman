unit fegyverek;

interface
uses windows, typestuff, math, Direct3d9, d3dx9;
//const

//M4_Golyoido=0.3;
type
  Tprojectile = record
    p1, p2:TD3DXvector3;
    ido, mido:single;
  end;

  Tprojectilearray = array of Tprojectile;

  TF_M4A1 = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    m4tex:IDirect3DTexture9;
    muzz:array[0..17] of TCustomVertex;
    procedure makemuzzle;
    procedure makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);
    destructor Destroy; reintroduce;
  end;

  TF_M82A1 = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    m4tex, scaltex:IDirect3DTexture9;
    muzz:array[0..17] of TCustomVertex;
    scal:array[0..11] of Tskyvertex;
    procedure makemuzzle;
    procedure makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
    procedure makescalequad(hol:integer;m1, m2, m3, m4:TD3DXVector3);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure drawscope;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);

    destructor Destroy; reintroduce;
  end;

  TF_LAW = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    m4tex:IDirect3DTexture9;
    muzz:array[0..17] of TCustomVertex;
    procedure makemuzzle;
    procedure makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);

    destructor Destroy; reintroduce;
  end;

  TF_MP5A3 = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    m4tex:IDirect3DTexture9;
    muzz:array[0..17] of TCustomVertex;
    procedure makemuzzle;
    procedure makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);

    destructor Destroy; reintroduce;
  end;

  TF_BM3 = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    m4tex:IDirect3DTexture9;
    muzz:array[0..17] of TCustomVertex;
    procedure makemuzzle;
    procedure makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);
    destructor Destroy; reintroduce;
  end;

  TF_MPG = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    mpgtex:IDirect3DTexture9;
    mpgemap:IDirect3DTexture9;
    muzz:array[0..5] of TCustomVertex;
    procedure makemuzzle(alpha:single);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single;szog:single);
    procedure drawmuzzle(siz:single;szog:single);
    destructor Destroy; reintroduce;
  end;

  TF_QUADRO = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    quadrotex:IDirect3DTexture9;
    quadroemap:IDirect3DTexture9;
    muzz:array[0..5] of TCustomVertex;
    procedure makemuzzle(alpha:single);

  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single;szog:single);
    procedure drawmuzzle(siz:single;szog:single);
    destructor Destroy; reintroduce;
  end;

  TF_NOOB = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    tex:IDirect3DTexture9;
    emap:IDirect3DTexture9;
    //  muzz:array [0..3] of TCustomVertex;
   //   procedure makemuzzle(alpha:single);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);
    destructor Destroy; reintroduce;
  end;

  TF_X72 = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    x72tex:IDirect3DTexture9;
    x72emap:IDirect3DTexture9;
    muzz:array[0..17] of TCustomVertex;
    procedure makemuzzle;
    procedure makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);
    destructor Destroy; reintroduce;
  end;

  TF_HPL = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    m4tex, mpgemap, scaltex:IDirect3DTexture9;
    muzz:array[0..17] of TCustomVertex;
    scal:array[0..11] of Tskyvertex;
    procedure makemuzzle;
    procedure makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
    procedure makescalequad(hol:integer;m1, m2, m3, m4:TD3DXVector3);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure drawscope;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);
    destructor Destroy; reintroduce;
  end;

  TF_H31 = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    tex:IDirect3DTexture9;
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single);
    destructor Destroy; reintroduce;
  end;

  TF_GUNSUPP = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    tex:IDirect3DTexture9;
    muzz:array[0..5] of TCustomVertex;
    procedure makemuzzle(alpha:single);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single;szog:single);
    procedure drawmuzzle(siz:single;szog:single);
    destructor Destroy; reintroduce;
  end;

  TF_TECHSUPP = class(Tobject)
  private
    g_pMesh:ID3DXMesh;
    g_pD3Ddevice:IDirect3ddevice9;
    tex:IDirect3DTexture9; 
    emap:IDirect3DTexture9;
    muzz:array[0..17] of TCustomVertex;
    procedure makemuzzle;
    procedure makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
  public
    betoltve:boolean;
    fc:single;
    muzzez:array of TCustomvertex;
    constructor Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
    procedure draw;
    procedure pluszmuzzmatr(siz:single);
    procedure drawmuzzle(siz:single);
    destructor Destroy; reintroduce;
  end;

  TFegyv = class(TObject)
  private
    g_pD3Ddevice:IDirect3ddevice9;
    M4proj, mpgproj:Tprojectilearray;

    B_M4A1, G_M4A1, M4A1:TF_M4A1;
    B_M82A1, G_M82A1, M82A1:TF_M82A1;
    B_MPG,  G_MPG, MPG:TF_MPG;
    B_LAW,  G_LAW, LAW:TF_LAW;
    B_NOOB, G_NOOB, NOOB:TF_NOOB;
    B_QUADRO, G_QUADRO, QUADRO:TF_QUADRO;
    B_MP5A3, G_MP5A3, MP5A3:TF_MP5A3;
    B_X72,  G_X72, X72:TF_X72;
    B_BM3,  G_BM3, BM3:TF_BM3;
    B_HPL,  G_HPL, HPL:TF_HPL;
    GUNSUPP: TF_GUNSUPP;
    TECHSUPP: TF_TECHSUPP;

    H31:TF_H31;

    gunmuztex, mpgmuztex, x72muztex:IDirect3DTexture9;
    g_pVB:IDirect3DVertexBuffer9;
  public
    betoltve:boolean;
    constructor Create(a_D3Ddevice:IDirect3ddevice9);
    procedure drawfegyv(mit:byte;felhocoverage:byte;fegylit:byte);
    procedure drawscope(mit:byte);
    procedure preparealpha;
    procedure drawfegyeffekt(mit:byte;mekkora:single;szog:single);
    procedure FlushFegyeffekt;
    procedure unpreparealpha;
    function bkez(afegyv:word;astate:byte;szogy:single = 0):TD3DXVector3;
    function jkez(afegyv:word;astate:byte;szogy:single = 0):TD3DXVector3;
    destructor Destroy; reintroduce;
  end;

implementation

//TODO REMOVE FROM EVERY WEAPON: model addfiletochecksum - skinek miatt t�bbsz�r ker�l checksumba

////////////////////////////////
//            M4A1
///////////////////////////////

constructor TF_M4A1.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:PDword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', m4tex) then
    Exit;

  makemuzzle;

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.7;
  fc:=(vma.z - vmi.z) * 0.5;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:= -(pvert[i].position.x - vmi.x) / scl - 0.04;
    tmp.y:=(pvert[i].position.y - vma.y) / scl + 0.001;
    tmp.x:=(pvert[i].position.z - vma.z + fc) / scl;
    //if abs(tmp.x)<0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;
  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_M4A1.makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
begin
  muzz[hol + 0]:=v1;
  muzz[hol + 1]:=v2;
  muzz[hol + 2]:=v3;
  muzz[hol + 3]:=v4;
  muzz[hol + 4]:=v2;
  muzz[hol + 5]:=v3;
end;

procedure TF_M4A1.makemuzzle;
begin
  makemuzzlequad(0, CustomVertex(-0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 0, 0, 0),
    CustomVertex(-0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 2, 0, 0),
    CustomVertex(0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 2, 0, 0));
  makemuzzlequad(6, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0, 0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(0, -0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));
  makemuzzlequad(12, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(-0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));

end;

procedure TF_M4A1.draw;
begin
  g_pd3dDevice.Settexture(0, m4tex);
  g_pMesh.DrawSubset(0);
end;

procedure TF_M4A1.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.06, -0.72);
  D3DXMatrixScaling(matWorld2, siz / 2, siz / 2, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_M4A1.drawmuzzle(siz:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz = 0 then exit;

  pluszmuzzmatr(siz);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
  // g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST,6,muzz,sizeof(TCustomvertex));
end;

destructor TF_M4A1.Destroy;
begin
  if m4tex <> nil then
    m4tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;


////////////////////////////////
//            M82A1
///////////////////////////////

constructor TF_M82A1.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:PDword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', m4tex) then
    Exit;
  if not LTFF(g_pd3dDevice, 'data/textures/weapons/scale.png', scaltex, TEXFLAG_FIXRES) then
    Exit;

  makemuzzle;

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=1.3 / scl;
  fc:=(vma.z - vmi.z);
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.x:= -(pvert[i].position.x - vmi.x) * scl + 0.05;
    tmp.y:=(pvert[i].position.y - vma.y) * scl + 0.05;
    tmp.z:= -(pvert[i].position.z - vma.z + fc) * scl + 0.001;
    //if abs(tmp.x)<0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;
  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_M82A1.makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
begin
  muzz[hol + 0]:=v1;
  muzz[hol + 1]:=v2;
  muzz[hol + 2]:=v3;
  muzz[hol + 3]:=v4;
  muzz[hol + 4]:=v2;
  muzz[hol + 5]:=v3;
end;

procedure TF_M82A1.makescalequad(hol:integer;m1, m2, m3, m4:TD3DXVector3);
var
  v1, v2, v3, v4:TSkyVertex;
const
  uvszorzo = 5;
begin
  v1.position:=m1;v2.position:=m2;v3.position:=m3;v4.position:=m4;
  v1.u:=v1.position.x * uvszorzo;v1.v:=v1.position.y * uvszorzo;
  v2.u:=v2.position.x * uvszorzo;v2.v:=v2.position.y * uvszorzo;
  v3.u:=v3.position.x * uvszorzo;v3.v:=v3.position.y * uvszorzo;
  v4.u:=v4.position.x * uvszorzo;v4.v:=v4.position.y * uvszorzo;
  //v5.u:=v5.position.x*uvszorzo; v5.v:=v5.position.y*uvszorzo;
  scal[hol + 0]:=v1;
  scal[hol + 1]:=v2;
  scal[hol + 2]:=v3;
  scal[hol + 3]:=v3;
  scal[hol + 4]:=v2;
  scal[hol + 5]:=v4;
end;

procedure TF_M82A1.makemuzzle;
begin
  makemuzzlequad(0, CustomVertex(-0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 0, 0, 0),
    CustomVertex(-0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 2, 0, 0),
    CustomVertex(0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 2, 0, 0));
  makemuzzlequad(6, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0, 0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(0, -0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));
  makemuzzlequad(12, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(-0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));

  makescalequad(0, D3DXVector3(-0.02, 0.00003, -0.2), D3DXVector3(-0.02, -0.000025, -0.2),
    D3DXVector3(0.02, 0.00003, -0.2), D3DXVector3(0.02, -0.000025, -0.2));
  makescalequad(6, D3DXVector3(-0.00003, 0.02, -0.2), D3DXVector3(-0.000025, -0.02, -0.2),
    D3DXVector3(0.00003, 0.02, -0.2), D3DXVector3(0.000025, -0.02, -0.2));
end;

procedure TF_M82A1.draw;
begin
  g_pd3dDevice.Settexture(0, m4tex);
  g_pMesh.DrawSubset(0);
end;

procedure TF_M82A1.drawscope;
begin
  g_pd3dDevice.SetFVF(D3DFVF_SKYVERTEX);
  g_pd3ddevice.settexture(0, scaltex);
  g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST, 4, scal, sizeof(Tskyvertex));
end;

procedure TF_M82A1.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.05, -1.3);
  D3DXMatrixScaling(matWorld2, siz / 2, siz / 2, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;


procedure TF_M82A1.drawmuzzle(siz:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz = 0 then exit;

  pluszmuzzmatr(siz);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
  // g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST,6,muzz,sizeof(TCustomvertex));
end;

destructor TF_M82A1.Destroy;
begin
  if m4tex <> nil then
    m4tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;



////////////////////////////////
//            LAW
///////////////////////////////

constructor TF_LAW.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:PDword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', m4tex) then
    Exit;

  makemuzzle;

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.7;
  fc:=(vma.z - vmi.z) * 0.5;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:= -(pvert[i].position.x - vmi.x) * 1.5 / scl + 0.2;
    tmp.y:=(pvert[i].position.y - vma.y) / scl + 0.03;
    tmp.x:=(pvert[i].position.z - vma.z + fc) / scl - 0.084;
    //  if abs(tmp.x)<0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;
  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_LAW.makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
begin
  muzz[hol + 0]:=v1;
  muzz[hol + 1]:=v2;
  muzz[hol + 2]:=v3;
  muzz[hol + 3]:=v4;
  muzz[hol + 4]:=v2;
  muzz[hol + 5]:=v3;
end;

procedure TF_LAW.makemuzzle;
begin
  makemuzzlequad(0, CustomVertex(-0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 0, 0, 0),
    CustomVertex(-0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 2, 0, 0),
    CustomVertex(0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 2, 0, 0));
  makemuzzlequad(6, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0, 0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(0, -0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));
  makemuzzlequad(12, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(-0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));

end;

procedure TF_LAW.draw;
begin
  g_pd3dDevice.Settexture(0, m4tex);
  g_pMesh.DrawSubset(0);
end;

procedure TF_LAW.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.08, -0.7);
  D3DXMatrixScaling(matWorld2, siz / 2, siz / 2, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_LAW.drawmuzzle(siz:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz = 0 then exit;

  pluszmuzzmatr(siz);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
  // g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST,6,muzz,sizeof(TCustomvertex));
end;

destructor TF_LAW.Destroy;
begin
  if m4tex <> nil then
    m4tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;

////////////////////////////////
//            MP5A3
///////////////////////////////

constructor TF_MP5A3.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:PDword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', m4tex) then
    Exit;

  makemuzzle;

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.6;
  fc:=(vma.x - vmi.x) * 0.5;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:= -0.6 + (pvert[i].position.z - vmi.z) / scl;
    tmp.y:=(pvert[i].position.y - vma.y) / scl + 0.006;
    tmp.x:=(pvert[i].position.x - vma.x + fc) / scl;
    //if abs(tmp.x)<0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;
  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_MP5A3.makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
begin
  muzz[hol + 0]:=v1;
  muzz[hol + 1]:=v2;
  muzz[hol + 2]:=v3;
  muzz[hol + 3]:=v4;
  muzz[hol + 4]:=v2;
  muzz[hol + 5]:=v3;
end;

procedure TF_MP5A3.makemuzzle;
begin
  makemuzzlequad(0, CustomVertex(-0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 0, 0, 0),
    CustomVertex(-0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 2, 0, 0),
    CustomVertex(0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 2, 0, 0));
  makemuzzlequad(6, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0, 0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(0, -0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));
  makemuzzlequad(12, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(-0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));

end;

procedure TF_MP5A3.draw;
begin
  g_pd3dDevice.Settexture(0, m4tex);
  g_pMesh.DrawSubset(0);
end;

procedure TF_MP5A3.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.06, -0.6);
  D3DXMatrixScaling(matWorld2, siz / 2, siz / 2, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_MP5A3.drawmuzzle(siz:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz = 0 then exit;

  pluszmuzzmatr(siz);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
  // g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST,6,muzz,sizeof(TCustomvertex));
end;

destructor TF_MP5A3.Destroy;
begin
  if m4tex <> nil then
    m4tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;

////////////////////////////////
//            BM3
///////////////////////////////

constructor TF_BM3.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:PDword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', m4tex) then
    Exit;

  makemuzzle;

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=0.94 / scl;
  //  scl:=0.08675; //1200 mm a modell �s 1041 k�ne legyen
  fc:=(vma.x - vmi.x) * 0.5;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:=(pvert[i].position.z + vmi.z) * scl - 0.147; //Z=h�tra
    tmp.y:=(pvert[i].position.y - vma.y) * scl + 0.0028;
    tmp.x:=(pvert[i].position.x - vma.x + fc) * scl;
    //if abs(tmp.x)<0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;
  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_BM3.makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
begin
  muzz[hol + 0]:=v1;
  muzz[hol + 1]:=v2;
  muzz[hol + 2]:=v3;
  muzz[hol + 3]:=v4;
  muzz[hol + 4]:=v2;
  muzz[hol + 5]:=v3;
end;

procedure TF_BM3.makemuzzle;
begin
  makemuzzlequad(0, CustomVertex(-0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 0, 0, 0),
    CustomVertex(-0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 2, 0, 0),
    CustomVertex(0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 2, 0, 0));
  makemuzzlequad(6, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0, 0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(0, -0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));
  makemuzzlequad(12, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(-0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));

end;

procedure TF_BM3.draw;
begin
  g_pd3dDevice.Settexture(0, m4tex);
  g_pMesh.DrawSubset(0);
end;

procedure TF_BM3.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.015, -0.89);
  D3DXMatrixScaling(matWorld2, siz / 2, siz / 2, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_BM3.drawmuzzle(siz:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz = 0 then exit;

  pluszmuzzmatr(siz);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
  // g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST,6,muzz,sizeof(TCustomvertex));
end;

destructor TF_BM3.Destroy;
begin
  if m4tex <> nil then
    m4tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;

/////////////////////////////////////
//               MPG
////////////////////////////////////


constructor TF_MPG.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:Pdword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');
  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', mpgtex) then
    Exit;
  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + 'em.jpg', mpgemap) then
    Exit;
  // makemuzzle(255);

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.7;
  fc:=(vma.z - vmi.z) * 0.5 / scl;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:= -(pvert[i].position.x - vmi.x) * 0.9 / scl;
    tmp.y:=(pvert[i].position.y - vma.y) / scl;
    tmp.x:=(pvert[i].position.z - vma.z) / scl + fc;
    pvert[i].color:=ARGB(0, 200, 200, 200);
    pvert[i].position:=tmp;
    pvert[i].u2:=pvert[i].u;
    pvert[i].v2:=pvert[i].v;
  end;
  g_pMesh.UnlockVertexBuffer;

  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_MPG.makemuzzle(alpha:single);
var
  c:TD3DXColor;
  col:cardinal;
begin
  c:=D3DXColorFromDWord(weapons[1].col[4]);
  c.a:=c.a * alpha;
  col:=D3DXColorToDWord(c);
  muzz[0]:=CustomVertex(-0.5, -0.5, 0, 0, 0, 0, col, 0, 0, 0, 0);
  muzz[1]:=CustomVertex(0.5, -0.5, 0, 0, 0, 0, col, 1, 0, 0, 0);
  muzz[2]:=CustomVertex(-0.5, 0.5, 0, 0, 0, 0, col, 0, 1, 0, 0);
  muzz[3]:=CustomVertex(0.5, 0.5, 0, 0, 0, 0, col, 1, 1, 0, 0);
  muzz[4]:=CustomVertex(0.5, -0.5, 0, 0, 0, 0, col, 1, 0, 0, 0);
  muzz[5]:=CustomVertex(-0.5, 0.5, 0, 0, 0, 0, col, 0, 1, 0, 0);
end;

procedure TF_MPG.draw;
begin

  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG2, D3DTA_CURRENT);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_ADD);
  g_pd3dDevice.Settexture(0, mpgtex);
  g_pd3dDevice.Settexture(1, mpgemap);
  g_pMesh.DrawSubset(0);

  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
end;

procedure TF_MPG.pluszmuzzmatr(siz:single;szog:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.08, -0.7);
  D3DXMatrixRotationZ(matWorld2, szog);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  D3DXMatrixScaling(matWorld2, siz, siz, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;


procedure TF_MPG.drawmuzzle(siz:single;szog:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz >= 1 then exit;

  makemuzzle(1 - siz);
  pluszmuzzmatr(siz / 2, szog);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
end;

destructor TF_MPG.Destroy;
begin
  if mpgtex <> nil then
    mpgtex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;



/////////////////////////////////////
//               QUADRO
////////////////////////////////////


constructor TF_QUADRO.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:Pdword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', quadrotex) then
    Exit;

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + 'em.jpg', quadroemap) then
    Exit;
  // makemuzzle(255);

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.8;
  fc:=(vma.z - vmi.z) * 0.5 / scl;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:=(pvert[i].position.x - vma.x) * 0.9 / scl;
    tmp.y:=(pvert[i].position.y - vma.y) / scl + 0.06;
    tmp.x:= -(pvert[i].position.z - vma.z) / scl - fc;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
    pvert[i].u2:=pvert[i].u;
    pvert[i].v2:=pvert[i].v;
  end;
  g_pMesh.UnlockVertexBuffer;

  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_QUADRO.makemuzzle(alpha:single);
var
  c:TD3DXColor;
  col:cardinal;
begin
  c:=D3DXColorFromDWord(weapons[2].col[7]);
  c.a:=c.a * alpha;
  col:=D3DXColorToDWord(c);

  muzz[0]:=CustomVertex(-0.5, -0.5, 0, 0, 0, 0, col, 0, 0, 0, 0);
  muzz[1]:=CustomVertex(0.5, -0.5, 0, 0, 0, 0, col, 1, 0, 0, 0);
  muzz[2]:=CustomVertex(-0.5, 0.5, 0, 0, 0, 0, col, 0, 1, 0, 0);
  muzz[3]:=CustomVertex(0.5, 0.5, 0, 0, 0, 0, col, 1, 1, 0, 0);
  muzz[4]:=CustomVertex(0.5, -0.5, 0, 0, 0, 0, col, 1, 0, 0, 0);
  muzz[5]:=CustomVertex(-0.5, 0.5, 0, 0, 0, 0, col, 0, 1, 0, 0);

end;

procedure TF_QUADRO.draw;
begin
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG2, D3DTA_CURRENT);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_ADD);
  g_pd3dDevice.Settexture(0, quadrotex);
  g_pd3dDevice.Settexture(1, quadroemap);
  g_pMesh.DrawSubset(0);

  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
end;

procedure TF_QUADRO.pluszmuzzmatr(siz:single;szog:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.0, -0.7);
  D3DXMatrixRotationZ(matWorld2, szog);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  D3DXMatrixScaling(matWorld2, siz, siz, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_QUADRO.drawmuzzle(siz:single;szog:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz >= 1 then exit;

  makemuzzle(1 - siz);
  pluszmuzzmatr(siz, szog);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
end;

destructor TF_QUADRO.Destroy;
begin
  if quadrotex <> nil then
    quadrotex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;


/////////////////////////////////////
//               NOOB
////////////////////////////////////


constructor TF_NOOB.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:Pdword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', tex) then
    Exit;

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + 'em.jpg', emap) then
    Exit;
  // makemuzzle(255);

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.4;
  fc:=(vma.z - vmi.z) * 0.5 / scl;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:=(pvert[i].position.z + vmi.z) * 1 / scl - 0.05;
    tmp.y:=(pvert[i].position.y - vma.y) / scl;
    tmp.x:=(pvert[i].position.x - vma.x) / scl + fc + 0.0465;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
    pvert[i].u2:=pvert[i].u;
    pvert[i].v2:=pvert[i].v;
  end;
  g_pMesh.UnlockVertexBuffer;

  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

{procedure TF_NOOB.makemuzzle(alpha:single);
begin
 muzz[0]:=CustomVertex(-0.5,-0.5,   0,0,0,0,ARGB(alpha,255,255,255),0,0,0,0);
 muzz[1]:=CustomVertex( 0.5,-0.5,   0,0,0,0,ARGB(alpha,255,255,255),1,0,0,0);
 muzz[2]:=CustomVertex(-0.5, 0.5,   0,0,0,0,ARGB(alpha,255,255,255),0,1,0,0);
 muzz[3]:=CustomVertex( 0.5, 0.5,   0,0,0,0,ARGB(alpha,255,255,255),1,1,0,0);
end; }

procedure TF_NOOB.draw;
begin
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG2, D3DTA_CURRENT);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_ADD);
  g_pd3dDevice.Settexture(0, tex);
  g_pd3dDevice.Settexture(1, emap);
  g_pMesh.DrawSubset(0);

  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
end;

procedure TF_NOOB.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.08, -0.7);
  D3DXMatrixScaling(matWorld2, siz, siz, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_NOOB.drawmuzzle(siz:single);
begin
  //roflmao
end;

destructor TF_NOOB.Destroy;
begin
  if tex <> nil then
    tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;

////////////////////////////////
//            X72
///////////////////////////////

constructor TF_X72.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:PDword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');


  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', x72tex) then
    Exit;

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + 'em.jpg', x72emap) then
    Exit;

  makemuzzle;

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.7;
  fc:=(vma.z - vmi.z) * 0.5;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.x:=(pvert[i].position.x) / scl;
    tmp.y:=(pvert[i].position.y - vma.y) / scl;
    tmp.z:=(pvert[i].position.z - vma.z) / scl; //+0.001;
    if abs(tmp.x) < 0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;

  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_X72.makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
begin
  muzz[hol + 0]:=v1;
  muzz[hol + 1]:=v2;
  muzz[hol + 2]:=v3;
  muzz[hol + 3]:=v4;
  muzz[hol + 4]:=v2;
  muzz[hol + 5]:=v3;
end;

procedure TF_X72.makemuzzle;
begin
  makemuzzlequad(0, CustomVertex(-0.5, -0.5, 0, 0, 0, 0, weapons[4].col[8], 0, 0, 0, 0),
    CustomVertex(0.5, -0.5, 0, 0, 0, 0, weapons[4].col[8], 0, 2, 0, 0),
    CustomVertex(-0.5, 0.5, 0, 0, 0, 0, weapons[4].col[8], 1, 0, 0, 0),
    CustomVertex(0.5, 0.5, 0, 0, 0, 0, weapons[4].col[8], 1, 2, 0, 0));
  makemuzzlequad(6, CustomVertex(0, 0.5, 0, 0, 0, 0, weapons[4].col[8], 0, 1, 0, 0),
    CustomVertex(0, -0.5, 0, 0, 0, 0, weapons[4].col[8], 1, 1, 0, 0),
    CustomVertex(0, 0.5, -1, 0, 0, 0, weapons[4].col[8], 0, 0, 0, 0),
    CustomVertex(0, -0.5, -1, 0, 0, 0, weapons[4].col[8], 1, 0, 0, 0));
  makemuzzlequad(12, CustomVertex(0.5, 0, 0, 0, 0, 0, weapons[4].col[8], 0, 1, 0, 0),
    CustomVertex(-0.5, 0, 0, 0, 0, 0, weapons[4].col[8], 1, 1, 0, 0),
    CustomVertex(0.5, 0, -1, 0, 0, 0, weapons[4].col[8], 0, 0, 0, 0),
    CustomVertex(-0.5, 0, -1, 0, 0, 0, weapons[4].col[8], 1, 0, 0, 0));
end;

procedure TF_X72.draw;
begin
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG2, D3DTA_CURRENT);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_ADD);
  g_pd3dDevice.Settexture(0, x72tex);
  g_pd3dDevice.Settexture(1, x72emap);
  g_pMesh.DrawSubset(0);

  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
end;

procedure TF_X72.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.08, -0.7);
  D3DXMatrixScaling(matWorld2, (1 - siz), siz, siz * 2);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_X72.drawmuzzle(siz:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz = 0 then exit;

  pluszmuzzmatr(siz);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
  //   g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST,6,muzz,sizeof(TCustomvertex));
end;

destructor TF_X72.Destroy;
begin
  if x72tex <> nil then
    x72tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;

////////////////////////////////
//            HPL
///////////////////////////////

constructor TF_HPL.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:PDword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', m4tex) then
    Exit;

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + 'em.jpg', mpgemap) then
    Exit;

  if not LTFF(g_pd3dDevice, 'data/textures/weapons/scale.png', scaltex, TEXFLAG_FIXRES) then
    Exit;

  makemuzzle;

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=1.2 * 0.9 / scl;
  //  scl:=0.08675; //1200 mm a modell �s 1041 k�ne legyen
  fc:=(vma.x - vmi.x) * 0.5;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:=(pvert[i].position.z - vmi.z) * scl - 1.0; //Z=h�tra
    tmp.y:=(pvert[i].position.y - vma.y) * scl + 0.03;
    tmp.x:=(pvert[i].position.x - vma.x + fc) * scl;
    //if abs(tmp.x)<0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;
  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil); //ez itt adj v�t
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_HPL.makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
begin
  muzz[hol + 0]:=v1;
  muzz[hol + 1]:=v2;
  muzz[hol + 2]:=v3;
  muzz[hol + 3]:=v4;
  muzz[hol + 4]:=v2;
  muzz[hol + 5]:=v3;
end;

procedure TF_HPL.makemuzzle;
begin
  makemuzzlequad(0, CustomVertex(-0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 0, 0, 0),
    CustomVertex(-0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 2, 0, 0),
    CustomVertex(0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 2, 0, 0));
  makemuzzlequad(6, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0, 0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(0, -0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));
  makemuzzlequad(12, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(-0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));


  makescalequad(0, D3DXVector3(-0.02, 0.00003, -0.2), D3DXVector3(-0.02, -0.000025, -0.2),
    D3DXVector3(0.02, 0.00003, -0.2), D3DXVector3(0.02, -0.000025, -0.2));
  makescalequad(6, D3DXVector3(-0.00003, 0.02, -0.2), D3DXVector3(-0.000025, -0.02, -0.2),
    D3DXVector3(0.00003, 0.02, -0.2), D3DXVector3(0.000025, -0.02, -0.2));
end;

procedure TF_HPL.drawscope;
begin
  g_pd3dDevice.SetFVF(D3DFVF_SKYVERTEX);
  g_pd3ddevice.settexture(0, scaltex);
  g_pd3ddevice.settexture(1, scaltex);
  g_pd3ddevice.settexture(2, scaltex);
  //  g_pd3dDevice.SetRenderState(D3DRS_SRCBLEND,D3DBLEND_ONE);
  g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST, 4, scal, sizeof(Tskyvertex));
end;

procedure TF_HPL.makescalequad(hol:integer;m1, m2, m3, m4:TD3DXVector3);
var
  v1, v2, v3, v4:TSkyVertex;
const
  uvszorzo = 5;
begin
  v1.position:=m1;v2.position:=m2;v3.position:=m3;v4.position:=m4;
  v1.u:=v1.position.x * uvszorzo;v1.v:=v1.position.y * uvszorzo;
  v2.u:=v2.position.x * uvszorzo;v2.v:=v2.position.y * uvszorzo;
  v3.u:=v3.position.x * uvszorzo;v3.v:=v3.position.y * uvszorzo;
  v4.u:=v4.position.x * uvszorzo;v4.v:=v4.position.y * uvszorzo;
  //v5.u:=v5.position.x*uvszorzo; v5.v:=v5.position.y*uvszorzo;
  scal[hol + 0]:=v1;
  scal[hol + 1]:=v2;
  scal[hol + 2]:=v3;
  scal[hol + 3]:=v3;
  scal[hol + 4]:=v2;
  scal[hol + 5]:=v4;
end;

procedure TF_HPL.draw;
begin

  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG2, D3DTA_CURRENT);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_ADD);
  g_pd3dDevice.Settexture(0, m4tex);
  g_pd3dDevice.Settexture(1, mpgemap);
  g_pMesh.DrawSubset(0);

  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
end;

procedure TF_HPL.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.015, -0.89);
  D3DXMatrixScaling(matWorld2, siz / 2, siz / 2, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_HPL.drawmuzzle(siz:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz = 0 then exit;

  pluszmuzzmatr(siz);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
  // g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST,6,muzz,sizeof(TCustomvertex));
end;

destructor TF_HPL.Destroy;
begin
  if m4tex <> nil then
    m4tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;



/////////////////////////////////////
//               H31
////////////////////////////////////


constructor TF_H31.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:Pdword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', tex) then
    Exit;

  // makemuzzle(255);


  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.7;
  fc:=(vma.z - vmi.z) * 0.5;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:= -(pvert[i].position.x - vmi.x) * 1.5 / scl + 0.2;
    tmp.y:=(pvert[i].position.y - vma.y) / scl + 0.03;
    tmp.x:=(pvert[i].position.z - vma.z + fc) / scl - 0.084;
    //  if abs(tmp.x)<0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;
  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_H31.draw;
begin
  g_pd3dDevice.Settexture(0, tex);
  g_pMesh.DrawSubset(0);
end;

procedure TF_H31.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.08, -0.7);
  D3DXMatrixScaling(matWorld2, siz, siz, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;


destructor TF_H31.Destroy;
begin
  if tex <> nil then
    tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;


////////////////////////////////
//         TECHSUPP           //
////////////////////////////////

constructor TF_TECHSUPP.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:PDword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');

  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', tex) then
    Exit;
  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + 'em.jpg', emap) then
    Exit;

  makemuzzle;

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.7;
  fc:=(vma.z - vmi.z) * 0.5;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:= -(pvert[i].position.x - vmi.x) / scl - 0.04;
    tmp.y:=(pvert[i].position.y - vma.y) / scl + 0.001;
    tmp.x:=(pvert[i].position.z - vma.z + fc) / scl;
    //if abs(tmp.x)<0.005 then tmp.x:=0;
    pvert[i].color:=RGB(200, 200, 200);
    pvert[i].position:=tmp;
  end;
  g_pMesh.UnlockVertexBuffer;
  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_TECHSUPP.makemuzzlequad(hol:integer;v1, v2, v3, v4:TCustomVertex);
begin
  muzz[hol + 0]:=v1;
  muzz[hol + 1]:=v2;
  muzz[hol + 2]:=v3;
  muzz[hol + 3]:=v4;
  muzz[hol + 4]:=v2;
  muzz[hol + 5]:=v3;
end;

procedure TF_TECHSUPP.makemuzzle;
begin
  makemuzzlequad(0, CustomVertex(-0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, -0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 0, 0, 0),
    CustomVertex(-0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 2, 0, 0),
    CustomVertex(0.5, 0.5, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 2, 2, 0, 0));
  makemuzzlequad(6, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0, 0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(0, -0.5, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));
  makemuzzlequad(12, CustomVertex(0, 0, 0, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 0, 0, 0),
    CustomVertex(0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 0, 0, 0),
    CustomVertex(-0.5, 0, -0.5, 0, 0, 0, ARGB(255, 255, 255, 255), 0, 1, 0, 0),
    CustomVertex(0, 0, -1, 0, 0, 0, ARGB(255, 255, 255, 255), 1, 1, 0, 0));

end;

procedure TF_TECHSUPP.draw;
begin
  g_pd3dDevice.Settexture(0, tex);
  g_pd3dDevice.Settexture(1, emap);
  g_pMesh.DrawSubset(0);
end;

procedure TF_TECHSUPP.pluszmuzzmatr(siz:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.06, -0.72);
  D3DXMatrixScaling(matWorld2, siz / 2, siz / 2, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;

procedure TF_TECHSUPP.drawmuzzle(siz:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz = 0 then exit;

  pluszmuzzmatr(siz);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
  // g_pd3ddevice.drawprimitiveUP(D3DPT_TRIANGLELIST,6,muzz,sizeof(TCustomvertex));
end;

destructor TF_TECHSUPP.Destroy;
begin
  if tex <> nil then
    tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;


/////////////////////////////////////
//           GUNSUPP               //
/////////////////////////////////////


constructor TF_GUNSUPP.Create(a_D3Ddevice:IDirect3ddevice9;fnev:string;ftex:string = 'default');
var
  tempmesh:ID3DXMesh;
  pVert:PCustomvertexarray;
  vmi, vma, tmp:TD3DVector;
  scl:single;
  i:integer;
  adj:Pdword;
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  addfiletochecksum('data/models/weapons/' + fnev + '.x');
  if not LTFF(g_pd3dDevice,'data/textures/weapons/skins/' + ftex + '/' + fnev + '.jpg', tex) then
    Exit;
  // makemuzzle(255);

  if FAILED(D3DXLoadMeshFromX(PChar('data/models/weapons/' + fnev + '.x'), 0, g_pd3ddevice, nil, nil, nil, nil, tempmesh)) then exit;
  if FAILED(tempmesh.CloneMeshFVF(0, D3DFVF_CUSTOMVERTEX, g_pd3ddevice, g_pMesh)) then exit;
  if tempmesh <> nil then tempmesh:=nil;
  g_pMesh.LockVertexBuffer(0, pointer(pvert));
  D3DXComputeboundingbox(pointer(pvert), g_pMesh.GetNumVertices, g_pMesh.GetNumBytesPerVertex, vmi, vma);
  scl:=max(vma.x - vmi.x, max(vma.y - vmi.y, vma.z - vmi.z));
  scl:=scl / 0.7;
  fc:=(vma.z - vmi.z) * 0.5 / scl;
  for i:=0 to g_pMesh.GetNumVertices - 1 do
  begin
    tmp.z:= -(pvert[i].position.x - vmi.x) * 0.9 / scl;
    tmp.y:=(pvert[i].position.y - vma.y) / scl;
    tmp.x:=(pvert[i].position.z - vma.z) / scl + fc;
    pvert[i].color:=ARGB(0, 200, 200, 200);
    pvert[i].position:=tmp;
    pvert[i].u2:=pvert[i].u;
    pvert[i].v2:=pvert[i].v;
  end;
  g_pMesh.UnlockVertexBuffer;

  getmem(adj, g_pmesh.getnumfaces * 12);
  g_pMesh.generateadjacency(0.001, adj);
  D3DXComputenormals(g_pMesh, nil);
  g_pMesh.OptimizeInplace(D3DXMESHOPT_COMPACT + D3DXMESHOPT_ATTRSORT + D3DXMESHOPT_VERTEXCACHE, adj, nil, nil, nil);
  freemem(adj);
  betoltve:=true;
end;

procedure TF_GUNSUPP.makemuzzle(alpha:single);
var
  c:TD3DXColor;
  col:cardinal;
begin
  c:=D3DXColorFromDWord(weapons[1].col[4]);
  c.a:=c.a * alpha;
  col:=D3DXColorToDWord(c);
  muzz[0]:=CustomVertex(-0.5, -0.5, 0, 0, 0, 0, col, 0, 0, 0, 0);
  muzz[1]:=CustomVertex(0.5, -0.5, 0, 0, 0, 0, col, 1, 0, 0, 0);
  muzz[2]:=CustomVertex(-0.5, 0.5, 0, 0, 0, 0, col, 0, 1, 0, 0);
  muzz[3]:=CustomVertex(0.5, 0.5, 0, 0, 0, 0, col, 1, 1, 0, 0);
  muzz[4]:=CustomVertex(0.5, -0.5, 0, 0, 0, 0, col, 1, 0, 0, 0);
  muzz[5]:=CustomVertex(-0.5, 0.5, 0, 0, 0, 0, col, 0, 1, 0, 0);
end;

procedure TF_GUNSUPP.draw;
begin
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLORARG2, D3DTA_CURRENT);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_ADD);
  g_pd3dDevice.Settexture(0, tex);
  g_pMesh.DrawSubset(0);

  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
end;

procedure TF_GUNSUPP.pluszmuzzmatr(siz:single;szog:single);
var
  matWorld, matWorld2:TD3DMatrix;
begin

  D3DXMatrixTranslation(matWorld, -0.00, -0.08, -0.7);
  D3DXMatrixRotationZ(matWorld2, szog);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  D3DXMatrixScaling(matWorld2, siz, siz, siz);
  D3DXmatrixMultiply(matWorld, matWorld2, MatWorld);
  g_pd3dDevice.MultiplyTransform(D3DTS_WORLD, matWorld);

end;


procedure TF_GUNSUPP.drawmuzzle(siz:single;szog:single);
var
  mat:TD3DMatrix;
  lngt, i:integer;
begin
  if siz >= 1 then exit;

  makemuzzle(1 - siz);
  pluszmuzzmatr(siz / 2, szog);

  g_pd3ddevice.GetTransform(D3DTS_WORLD, mat);
  lngt:=length(muzzez);
  setlength(muzzez, lngt + length(muzz));
  for i:=0 to high(muzz) do
  begin
    muzzez[i + lngt]:=muzz[i];
    D3DXVec3TransformCoord(muzzez[i + lngt].position, muzz[i].position, mat);
  end;
end;

destructor TF_GUNSUPP.Destroy;
begin
  if tex <> nil then
    tex:=nil;
  if g_pmesh <> nil then
    g_pmesh:=nil;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
end;

//***************************************
//***************************************
//*******TOV�BBI FEGYVEREK HELYE!!!******
//***************************************
//***************************************

constructor TFegyv.Create(a_D3Ddevice:IDirect3ddevice9);
var
  skin:string; //data/textures/weapons/skins/-skin-/..
begin
  inherited Create;
  betoltve:=false;
  g_pD3Ddevice:=a_D3Ddevice;
  skin:='default';
  if winter then
    skin:='xmas';

  M4A1:=TF_M4A1.create(a_D3Ddevice, 'm4a1', skin);
  if not M4A1.betoltve then exit;
  M82A1:=TF_M82A1.create(a_D3Ddevice, 'm82', skin);
  if not M82A1.betoltve then exit;
  MPG:=TF_MPG.create(a_D3Ddevice, 'mpg', skin);
  if not MPG.betoltve then exit;
  QUADRO:=TF_QUADRO.create(a_D3Ddevice, 'quad', skin);
  if not QUADRO.betoltve then exit;
  LAW:=TF_LAW.create(a_D3Ddevice, 'law', skin);
  if not LAW.betoltve then exit;
  NOOB:=TF_NOOB.create(a_D3Ddevice, 'noob', skin);
  if not NOOB.betoltve then exit;
  MP5A3:=TF_MP5A3.create(a_D3Ddevice, 'mp5', skin);
  if not MP5A3.betoltve then exit;
  X72:=TF_X72.create(a_D3Ddevice, 'x72', skin);
  if not X72.betoltve then exit;
  BM3:=TF_BM3.create(a_D3Ddevice, 'bm3', skin);
  if not BM3.betoltve then exit;
  //GUNSUPP:=TF_GUNSUPP.Create(a_D3Ddevice, 'gunsupp', skin);
  //if not GUNSUPP.betoltve then exit;
  //TECHSUPP:=TF_TECHSUPP.Create(a_D3Ddevice, 'techsupp', skin);
  //if not TECHSUPP.betoltve then exit;
  HPL:=TF_HPL.create(a_D3Ddevice, 'hpl', skin);
  if not HPL.betoltve then exit;

  if winter then
  begin
    H31:=TF_H31.create(a_D3Ddevice,'h31', 'xmas');//NO Default skin
    if not H31.betoltve then exit;
  end;

  //SKINEK
  G_M4A1:=TF_M4A1.create(a_D3Ddevice, 'm4a1', 'golden');
  if not G_M4A1.betoltve then exit;
  G_M82A1:=TF_M82A1.create(a_D3Ddevice, 'm82', 'golden');
  if not G_M82A1.betoltve then exit;
  G_LAW:=TF_LAW.create(a_D3Ddevice, 'law', 'golden');
  if not G_LAW.betoltve then exit;
  G_MP5A3:=TF_MP5A3.create(a_D3Ddevice, 'mp5', 'golden');
  if not G_MP5A3.betoltve then exit;
  G_BM3:=TF_BM3.create(a_D3Ddevice, 'bm3', 'golden');
  if not G_BM3.betoltve then exit;
  G_NOOB:=TF_NOOB.create(a_D3Ddevice, 'noob', 'golden');
  if not G_NOOB.betoltve then exit;
  G_X72:=TF_X72.create(a_D3Ddevice, 'x72', 'golden');
  if not G_x72.betoltve then exit;
  G_MPG:=TF_MPG.create(a_D3Ddevice, 'mpg', 'golden');
  if not G_MPG.betoltve then exit;
  G_QUADRO:=TF_QUADRO.create(a_D3Ddevice, 'quad', 'golden');
  if not G_QUADRO.betoltve then exit;
  G_HPL:=TF_HPL.create(a_D3Ddevice, 'hpl', 'golden');
  if not G_HPL.betoltve then exit;

  
  B_M4A1:=TF_M4A1.create(a_D3Ddevice, 'm4a1', 'blue');
  if not B_M4A1.betoltve then exit;
  B_M82A1:=TF_M82A1.create(a_D3Ddevice, 'm82', 'blue');
  if not B_M82A1.betoltve then exit;
  B_LAW:=TF_LAW.create(a_D3Ddevice, 'law', 'blue');
  if not B_LAW.betoltve then exit;
  B_MP5A3:=TF_MP5A3.create(a_D3Ddevice, 'mp5', 'blue');
  if not B_MP5A3.betoltve then exit;
  B_BM3:=TF_BM3.create(a_D3Ddevice, 'bm3', 'blue');
  if not B_BM3.betoltve then exit;
  B_NOOB:=TF_NOOB.create(a_D3Ddevice, 'noob', 'blue');
  if not B_NOOB.betoltve then exit;
  B_X72:=TF_X72.create(a_D3Ddevice, 'x72', 'blue');
  if not B_x72.betoltve then exit;
  B_MPG:=TF_MPG.create(a_D3Ddevice, 'mpg', 'blue');
  if not B_MPG.betoltve then exit;
  B_QUADRO:=TF_QUADRO.create(a_D3Ddevice, 'quad', 'blue');
  if not B_QUADRO.betoltve then exit;
  B_HPL:=TF_HPL.create(a_D3Ddevice, 'hpl', 'blue');
  if not B_HPL.betoltve then exit;
  //SKINEK END

  if not LTFF(g_pd3dDevice, 'data/textures/weapons/muzzle/m4a1muzz.png', gunmuztex) then
    Exit;

  if not LTFF(g_pd3dDevice, 'data/textures/weapons/muzzle/mpgmuzz.png', mpgmuztex) then
    Exit;

  if not LTFF(g_pd3dDevice, 'data/textures/weapons/muzzle/x72muzz.png', x72muztex) then
    Exit;

  if FAILED(g_pd3dDevice.CreateVertexBuffer(5000 * sizeof(TCustomVertex),
    D3DUSAGE_WRITEONLY or D3DUSAGE_DYNAMIC, D3DFVF_CUSTOMVERTEX,
    D3DPOOL_DEFAULT, g_pVB, nil))
    then Exit;

  betoltve:=true;
end;

procedure TFegyv.drawfegyv(mit:byte;felhocoverage:byte;fegylit:byte);
var
  matViewproj, invWorld:TD3DXMatrix;
  tex:^IDirect3DTexture9;
  tmplw:longword;
  em:^IDirect3DTexture9;
  vanem:boolean;
//  i:integer;
begin

  g_pd3dDevice.SetRenderState(D3DRS_CULLMODE, D3DCULL_CCW);
  //  g_pd3dDevice.SetRenderState(D3DRS_AMBIENT,$FFFFFFFF);
  //  g_pd3ddevice.SetRenderState(D3DRS_BLENDFACTOR,$FFFFFFFF);
  //  g_pd3dDevice.SetRenderState(D3DRS_ALPHABLENDENABLE,ifalse);
  g_pd3dDevice.SetRenderState(D3DRS_ZWriteENABLE, iTrue);
  g_pd3dDevice.SetRenderState(D3DRS_LIGHTING, itrue);

  g_pd3dDevice.SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
  //  g_pd3dDevice.SetRenderState(D3DRS_DESTBLEND,D3DBLEND_SRCALPHA);
  g_pd3dDevice.SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ONE);
  g_pd3ddevice.SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);

  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLOROP, FAKE_HDR);
  //  g_pd3dDevice.SetTextureStageState(0,D3DTSS_COLOROP,D3DTOP_SELECTARG1);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAOP, D3DTOP_MODULATE);

  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_DIFFUSE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLORARG2, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_DIFFUSE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAARG2, D3DTA_TEXTURE);

  g_pd3dDevice.SetSamplerState(0, D3DSAMP_ADDRESSU, D3DTADDRESS_MIRROR);
  g_pd3dDevice.SetSamplerState(0, D3DSAMP_ADDRESSV, D3DTADDRESS_MIRROR);
  g_pd3dDevice.SetSamplerState(0, D3DSAMP_MIPFILTER, D3DTEXF_POINT);

  vanem:=false;
  em:=nil;
  tex:=nil;

  if (G_peffect <> nil) then
  begin

    case mit of
		  FEGYV_M4A1:tex:=@M4A1.m4tex;
		  FEGYV_M82A1:tex:=@M82A1.m4tex;
		  FEGYV_LAW:tex:=@LAW.m4tex;
		  FEGYV_MPG:tex:=@MPG.mpgtex;
		  FEGYV_QUAD:tex:=@QUADRO.quadrotex;
		  FEGYV_NOOB:tex:=@NOOB.tex;
		  FEGYV_MP5A3:tex:=@MP5A3.m4tex;
		  FEGYV_X72:tex:=@X72.x72tex;
		  FEGYV_BM3:tex:=@BM3.m4tex;
		  FEGYV_HPL:tex:=@HPL.m4tex;
      FEGYV_GUNSUPP:tex:=@GUNSUPP.tex;
      FEGYV_TECHSUPP:tex:=@TECHSUPP.tex;
          
		  FEGYV_H31_G:tex:=@H31.tex;
		  FEGYV_H31_T:tex:=@H31.tex;
          
		  FEGYV_G_M4A1:tex:=@G_M4A1.m4tex;
		  FEGYV_G_M82A1:tex:=@G_M82A1.m4tex;
		  FEGYV_G_LAW:tex:=@g_LAW.m4tex;
		  FEGYV_G_MPG:tex:=@G_MPG.mpgtex;
		  FEGYV_G_QUAD:tex:=@G_QUADRO.quadrotex;
		  FEGYV_G_NOOB:tex:=@G_NOOB.tex;
		  FEGYV_G_MP5A3:tex:=@G_MP5A3.m4tex;
		  FEGYV_G_X72:tex:=@G_X72.x72tex;
		  FEGYV_G_BM3:tex:=@G_BM3.m4tex;
		  FEGYV_G_HPL:tex:=@G_HPL.m4tex;
          
		  FEGYV_B_M4A1:tex:=@B_M4A1.m4tex;
		  FEGYV_B_M82A1:tex:=@B_M82A1.m4tex;
		  FEGYV_B_LAW:tex:=@B_LAW.m4tex;
		  FEGYV_B_MPG:tex:=@B_MPG.mpgtex;
		  FEGYV_B_QUAD:tex:=@B_QUADRO.quadrotex;
		  FEGYV_B_NOOB:tex:=@B_NOOB.tex;
		  FEGYV_B_MP5A3:tex:=@B_MP5A3.m4tex;
		  FEGYV_B_X72:tex:=@B_X72.x72tex;
		  FEGYV_B_BM3:tex:=@B_BM3.m4tex;
		  FEGYV_B_HPL:tex:=@B_HPL.m4tex;
    end;

    //    em:=@MPG.mpgemap;

    case mit of
	    FEGYV_MPG:em:=@MPG.mpgemap;
      FEGYV_QUAD:em:=@QUADRO.quadroemap;
      FEGYV_NOOB:em:=@NOOB.emap;
      FEGYV_X72:em:=@X72.x72emap;
      FEGYV_HPL:em:=@HPL.mpgemap;
      FEGYV_TECHSUPP:em:=@TECHSUPP.emap;

      FEGYV_G_MPG:em:=@G_MPG.mpgemap;
      FEGYV_G_QUAD:em:=@G_QUADRO.quadroemap;
      FEGYV_G_NOOB:em:=@G_NOOB.emap;
      FEGYV_G_X72:em:=@G_X72.x72emap;
      FEGYV_G_HPL:em:=@G_HPL.mpgemap;
	  
	    FEGYV_B_MPG:em:=@B_MPG.mpgemap;
      FEGYV_B_QUAD:em:=@B_QUADRO.quadroemap;
      FEGYV_B_NOOB:em:=@B_NOOB.emap;
      FEGYV_B_X72:em:=@B_X72.x72emap;
      FEGYV_B_HPL:em:=@B_HPL.mpgemap;
    end;

    if em <> nil then vanem:=true;

    g_pd3ddevice.SetFVF(D3DFVF_SKYVERTEX);

  end;

  if (G_peffect <> nil) and (opt_detail >= DETAIL_POM) then
  begin

    g_peffect.SetTechnique('Wn');

    g_pd3ddevice.GetTransform(D3DTS_WORLD, matViewproj);
    g_pEffect.SetMatrix('World', matViewproj);

    d3dxmatrixinverse(invWorld, nil, matViewproj);
    g_pEffect.SetMatrix('invWorld', invWorld);

    g_pd3dDevice.GetTransform(D3DTS_VIEW, matViewproj);
    g_pEffect.SetMatrix('View', matViewproj);

    g_pd3dDevice.GetTransform(D3DTS_PROJECTION, matViewproj);
    g_pEffect.SetMatrix('Projection', matViewproj);

    //     g_pd3ddevice.GetTransform(D3DTS_WORLD,matViewproj);  //D3DTS_VIEW //D3DTS_PROJECTION
    //     g_pd3ddevice.GetTransform(D3DTS_VIEW,matViewproj);
//

//
//    g_pd3ddevice.GetTransform(D3DTS_WORLD,matViewproj);
//    d3dxmatrixmultiply(matViewproj,matView,matViewproj);
//    g_pEffect.SetMatrix('g_mWorldView2',matViewproj);


//  g_pd3dDevice.GetTransform(D3DTS_WORLD, matWorld);

//  g_pd3ddevice.SetTransform(D3DTS_PROJECTION,matproj);

//        d3dxmatrixmultiply(matViewproj,matWorld,matProj);
//        d3dxmatrixmultiply(matViewproj,matView,matViewproj);
//        g_pEffect.SetMatrix('g_mWorldViewProjection',matViewproj);
//        g_pEffect.SetMatrix('g_mProj',matViewproj);

    g_peffect.SetFloat('fegylit', fegylit / 10);
    g_peffect.SetFloat('FogStart', fogstart);
    g_peffect.SetFloat('FogEnd', fogend);
    g_pEffect.SetTexture('g_MeshTexture', tex^);
    if vanem then
      g_pEffect.SetTexture('g_Emap', em^);
    g_pEffect.SetBool('vanemap', vanem);
    g_peffect.SetFloat('HDRszorzo', shaderhdr);
    g_peffect.SetFloat('sunpow', lerp(felhoszin2, felhoszin1, cloudblend));
    g_peffect.SetVector('g_CameraPosition', D3DXVector4(campos.x, campos.y, campos.z, 0));
    //    g_pd3ddevice.SetVertexdeclaration(vertdecl);
    g_peffect._Begin(@tmplw, 0);
    g_peffect.BeginPass(0);

  end
  else
    if (G_peffect <> nil) then //jobb shaderrel, mint sim�n, az emap �gy l�tszik mindenhol, a hdr meg el van int�zve
    begin
      g_peffect.SetTechnique('WnHDR');

      g_pd3ddevice.GetTransform(D3DTS_WORLD, matViewproj);
      g_pEffect.SetMatrix('World', matViewproj);

      d3dxmatrixinverse(invWorld, nil, matViewproj);
      g_pEffect.SetMatrix('invWorld', invWorld);

      g_pd3dDevice.GetTransform(D3DTS_VIEW, matViewproj);
      g_pEffect.SetMatrix('View', matViewproj);

      g_pd3dDevice.GetTransform(D3DTS_PROJECTION, matViewproj);
      g_pEffect.SetMatrix('Projection', matViewproj);

      g_peffect.SetFloat('fegylit', fegylit / 10);
      g_peffect.SetFloat('FogStart', fogstart);
      g_peffect.SetFloat('FogEnd', fogend);
      g_pEffect.SetTexture('g_MeshTexture', tex^);
      if vanem then
        g_pEffect.SetTexture('g_Emap', em^);
      g_pEffect.SetBool('vanemap', vanem);
      //    g_peffect.SetFloat('HDRszorzo',shaderhdr);
      g_peffect.SetFloat('HDRszorzo', shaderhdr);


      g_peffect._Begin(@tmplw, 0);
      g_peffect.BeginPass(0);
    end;

  case mit of
		FEGYV_M4A1:M4A1.draw;
		FEGYV_M82A1:M82A1.draw;
		FEGYV_LAW:LAW.draw;
		FEGYV_MPG:MPG.draw;
		FEGYV_QUAD:QUADRO.draw;
		FEGYV_NOOB:NOOB.draw;
		FEGYV_MP5A3:MP5A3.draw;
		FEGYV_X72:X72.draw;
		FEGYV_BM3:BM3.draw;
		FEGYV_HPL:HPL.draw;
    FEGYV_GUNSUPP:GUNSUPP.draw;
    FEGYV_TECHSUPP:TECHSUPP.draw;

		FEGYV_H31_G:H31.draw;
		FEGYV_H31_T:H31.draw;

		FEGYV_G_M4A1:G_M4A1.draw;
		FEGYV_G_M82A1:G_M82A1.draw;
		FEGYV_G_LAW:G_LAW.draw;
		FEGYV_G_MPG:G_MPG.draw;
		FEGYV_G_QUAD:G_QUADRO.draw;
		FEGYV_G_NOOB:G_NOOB.draw;
		FEGYV_G_MP5A3:G_MP5A3.draw;
		FEGYV_G_X72:G_X72.draw;
		FEGYV_G_BM3:G_BM3.draw;
		FEGYV_G_HPL:G_HPL.draw;

		FEGYV_B_M4A1:B_M4A1.draw;
		FEGYV_B_M82A1:B_M82A1.draw;
		FEGYV_B_LAW:B_LAW.draw;
		FEGYV_B_MPG:B_MPG.draw;
		FEGYV_B_QUAD:B_QUADRO.draw;
		FEGYV_B_NOOB:B_NOOB.draw;
		FEGYV_B_MP5A3:B_MP5A3.draw;
		FEGYV_B_X72:B_X72.draw;
		FEGYV_B_BM3:B_BM3.draw;
		FEGYV_B_HPL:B_HPL.draw;
  end;

  if (G_peffect <> nil) then
  begin
    g_peffect.Endpass;
    g_peffect._end;
  end;

end;

//ez a bal k�z egy�bk�nt

function TFegyv.jkez(afegyv:word;astate:byte;szogy:single = 0):TD3DXVector3;
var
  bol:boolean;
  mat1, mat2:TD3DMatrix;
begin
  bol:=(0 = (astate and MSTAT_CSIPO));

  // if bol then afegyv:=afegyv+256;

  if bol then //ZOOOOOOOOM
    case afegyv of
      FEGYV_M4A1, FEGYV_G_M4A1:result:=D3DXVector3(-0.05, 1.41, -0.45);
      FEGYV_MPG, FEGYV_G_MPG:result:=D3DXVector3(-0.05, 1.4, -0.45);
      FEGYV_M82A1, FEGYV_G_M82A1:result:=D3DXVector3(-0.05, 1.42, -0.6);
      FEGYV_QUAD, FEGYV_G_QUAD:result:=D3DXVector3(0, 1.25, -0.48);
      FEGYV_X72, FEGYV_G_X72:result:=D3DXVector3(-0.05, 1.27, -0.45);
      FEGYV_NOOB, FEGYV_G_NOOB:result:=D3DXVector3(-0.05, 1.17, -0.35);
      FEGYV_LAW, FEGYV_G_LAW:result:=D3DXVector3(-0.2, 1.37, -0.45);
      FEGYV_MP5A3, FEGYV_G_MP5A3:result:=D3DXVector3(-0.05, 1.41, -0.45);
      FEGYV_H31_T:result:=D3DXVector3(-0.1, 1.37, -0.45);
      FEGYV_H31_G:result:=D3DXVector3(-0.1, 1.37, -0.45);
      FEGYV_BM3, FEGYV_G_BM3:result:=vec3add2(D3DXVector3(-0.05, 1.08, -0.48), D3DXVector3(0, 0.36, -0.14));
      FEGYV_HPL, FEGYV_G_HPL:result:=vec3add2(D3DXVector3(-0.05, 1.02, -0.37), D3DXVector3(0, 0.32, -0.11));
    else result:=D3DXVector3(-0.05, 1.37, -0.45);
    end
  else
    case afegyv of
      FEGYV_M4A1, FEGYV_G_M4A1:result:=D3DXVector3(-0.05, 1.11, -0.45);
      FEGYV_MPG, FEGYV_G_MPG:result:=D3DXVector3(-0.05, 1.08, -0.45);
      FEGYV_M82A1, FEGYV_G_M82A1:result:=vec3add2(D3DXVector3(-0.05, 1.42, -0.6), D3DXVector3(0, -0.35, 0.15));
      FEGYV_NOOB, FEGYV_G_NOOB:result:=D3DXVector3(0.15, 1.0, -0.13);
      FEGYV_LAW, FEGYV_G_LAW:result:=D3DXVector3(-0.15, 1.07, -0.27);
      FEGYV_MP5A3, FEGYV_G_MP5A3:result:=D3DXVector3(-0.05, 1.10, -0.45);
      FEGYV_QUAD, FEGYV_G_QUAD:result:=D3DXVector3(-0.00, 1.01, -0.28);
      FEGYV_X72, FEGYV_G_X72:result:=D3DXVector3(0.01, 1, -0.37);
      FEGYV_H31_T:result:=D3DXVector3(-0.05, 1.07, -0.27);
      FEGYV_H31_G:result:=D3DXVector3(-0.05, 1.07, -0.27);
      FEGYV_BM3, FEGYV_G_BM3:result:=D3DXVector3(-0.05, 1.08, -0.48);
      FEGYV_HPL, FEGYV_G_HPL:result:=D3DXVector3(-0.05, 1.02, -0.37);
    else result:=D3DXVector3(-0.05, 1.05, -0.45);
    end;

  if szogy <> 0 then
    if bol then begin
      D3DXMatrixTranslation(mat1, 0, -vallmag2, 0);
      D3DXMatrixRotationX(mat2, szogy);
      D3DXVec3TransformCoord(result, result, mat1);
      D3DXVec3TransformCoord(result, result, mat2);
      D3DXMatrixTranslation(mat1, 0, vallmag2, 0);
      D3DXVec3TransformCoord(result, result, mat1);
    end
    else
    begin
      D3DXMatrixTranslation(mat1, 0, -vallmag, 0);
      D3DXMatrixRotationX(mat2, szogy);
      D3DXVec3TransformCoord(result, result, mat1);
      D3DXVec3TransformCoord(result, result, mat2);
      D3DXMatrixTranslation(mat1, 0, vallmag, 0);
      D3DXVec3TransformCoord(result, result, mat1);
    end;

  if 0<(astate and MSTAT_GUGGOL) then
  begin
    result.y:=result.y - 0.5;
  end;
  //if (astate and MSTAT_MASK) = 7 then
  //  result := D3DXVector3(-0.00, 2.00, -0.28);

end;

//ez meg a jobb k�z

function TFegyv.bkez(afegyv:word;astate:byte;szogy:single = 0):TD3DXVector3;
var
  bol:boolean;
  mat1, mat2:TD3DMatrix;
begin
  bol:=0 = (astate and MSTAT_CSIPO);

  // if bol then afegyv:=afegyv+256;

  if bol then
    case afegyv of
      FEGYV_M4A1, FEGYV_G_M4A1, FEGYV_B_M4A1:result:=D3DXVector3(-0.05, 1.37, -0.27);
      FEGYV_M82A1, FEGYV_G_M82A1, FEGYV_B_M82A1:result:=D3DXVector3(-0.05, 1.4, -0.35);
      FEGYV_NOOB, FEGYV_G_NOOB, FEGYV_B_NOOB:result:=D3DXVector3(-0.05, 1.15, -0.10);
      FEGYV_LAW, FEGYV_G_LAW, FEGYV_B_LAW:result:=D3DXVector3(-0.2, 1.35, -0.27);
	    FEGYV_QUAD, FEGYV_G_QUAD, FEGYV_B_QUAD:result:=D3DXVector3(0, 1.28, -0.13);
	    FEGYV_X72, FEGYV_G_X72, FEGYV_B_X72:result:=D3DXVector3(-0.05, 1.27, -0.15);
      FEGYV_BM3, FEGYV_G_BM3, FEGYV_B_BM3:result:=vec3add2(D3DXVector3(-0.07, 1.06, -0.21), D3DXVector3(0.03, 0.36, -0.14));
      FEGYV_HPL, FEGYV_G_HPL, FEGYV_B_HPL:result:=vec3add2(D3DXVector3(-0.05, 1.055, -0.17), D3DXVector3(0, 0.32, -0.11));

	    FEGYV_H31_T:result:=D3DXVector3(-0.1, 1.35, -0.27);
      FEGYV_H31_G:result:=D3DXVector3(-0.1, 1.35, -0.27);
    else result:=D3DXVector3(-0.05, 1.35, -0.27);
    end
  else
    case afegyv of
	
      FEGYV_M4A1, FEGYV_G_M4A1, FEGYV_B_M4A1:result:=D3DXVector3(-0.05, 1.07, -0.27);
      FEGYV_M82A1, FEGYV_G_M82A1, FEGYV_B_M82A1:result:=vec3add2(D3DXVector3(-0.05, 1.4, -0.35), D3DXVector3(0, -0.35, 0.15));
      FEGYV_NOOB, FEGYV_G_NOOB, FEGYV_B_NOOB:result:=D3DXVector3(-0.17, 1.07, -0.1);
      FEGYV_LAW, FEGYV_G_LAW, FEGYV_B_LAW:result:=D3DXVector3(-0.25, 1.1, -0.45);
      FEGYV_QUAD, FEGYV_G_QUAD, FEGYV_B_QUAD:result:=D3DXVector3(-0.05, 1.00, -0.07);
      FEGYV_X72, FEGYV_G_X72, FEGYV_B_X72:result:=D3DXVector3(-0.07, 0.95, -0.15);
      FEGYV_BM3, FEGYV_G_BM3, FEGYV_B_BM3:result:=D3DXVector3(-0.07, 1.06, -0.21);
      FEGYV_HPL, FEGYV_G_HPL, FEGYV_B_HPL:result:=D3DXVector3(-0.05, 1.055, -0.17);
	  
	    FEGYV_H31_T:result:=D3DXVector3(-0.15, 1.1, -0.45);
      FEGYV_H31_G:result:=D3DXVector3(-0.15, 1.1, -0.45);
    else result:=D3DXVector3(-0.05, 1.05, -0.27);
    end;

  if szogy <> 0 then
    if bol then begin
      D3DXMatrixTranslation(mat1, 0, -vallmag2, 0);
      D3DXMatrixRotationX(mat2, szogy);
      D3DXVec3TransformCoord(result, result, mat1);
      D3DXVec3TransformCoord(result, result, mat2);
      D3DXMatrixTranslation(mat1, 0, vallmag2, 0);
      D3DXVec3TransformCoord(result, result, mat1);
    end
    else
    begin
      D3DXMatrixTranslation(mat1, 0, -vallmag, 0);
      D3DXMatrixRotationX(mat2, szogy);
      D3DXVec3TransformCoord(result, result, mat1);
      D3DXVec3TransformCoord(result, result, mat2);
      D3DXMatrixTranslation(mat1, 0, vallmag, 0);
      D3DXVec3TransformCoord(result, result, mat1);
    end;

  if 0<(astate and MSTAT_GUGGOL) then
  begin
    result.y:=result.y - 0.5;
  end;

  //if (astate and MSTAT_MASK) = 7 then
  //  result := D3DXVector3(-0.00, 2.00, -0.28);


end;



procedure TFegyv.drawscope(mit:byte);
begin
  g_pd3dDevice.SetFVF(D3DFVF_CUSTOMVERTEX);
  //    g_pd3dDevice.SetIndices(g_pIB);

  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLOROP, D3DTOP_MODULATE);
  g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_MODULATE);

  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLORARG2, D3DTA_DIFFUSE);

  g_pd3dDevice.SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
  g_pd3dDevice.SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);
  g_pd3ddevice.SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);

  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAARG2, D3DTA_DIFFUSE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);

  g_pd3dDevice.SetRenderState(D3DRS_AMBIENT, $FFFFFFFF);
  g_pd3dDevice.SetRenderState(D3DRS_ALPHABLENDENABLE, iFalse);

  case mit of
    FEGYV_M82A1:M82A1.drawscope;
    FEGYV_HPL:HPL.drawscope;
  end;
end;

procedure TFegyv.preparealpha;
begin
  g_pd3dDevice.SetRenderState(D3DRS_CULLMODE, D3DCULL_NONE);
  g_pd3dDevice.SetRenderState(D3DRS_AMBIENT, $FFFFFFFF);
  g_pd3ddevice.SetRenderState(D3DRS_BLENDFACTOR, $FFFFFFFF);
  g_pd3dDevice.SetRenderState(D3DRS_ALPHABLENDENABLE, iTrue);
  g_pd3dDevice.SetRenderState(D3DRS_ZWriteENABLE, iTrue);
  g_pd3dDevice.SetRenderState(D3DRS_LIGHTING, iFalse);


  g_pd3dDevice.SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
  //  g_pd3dDevice.SetRenderState(D3DRS_DESTBLEND,D3DBLEND_SRCALPHA);
  g_pd3dDevice.SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ONE);
  g_pd3ddevice.SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);

  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLOROP, D3DTOP_MODULATE);
  //  g_pd3dDevice.SetTextureStageState(0,D3DTSS_COLOROP,D3DTOP_SELECTARG1);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAOP, D3DTOP_MODULATE);

  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_DIFFUSE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLORARG2, D3DTA_TEXTURE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_DIFFUSE);
  g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAARG2, D3DTA_TEXTURE);

  g_pd3dDevice.SetSamplerState(0, D3DSAMP_ADDRESSU, D3DTADDRESS_MIRROR);
  g_pd3dDevice.SetSamplerState(0, D3DSAMP_ADDRESSV, D3DTADDRESS_MIRROR);
  g_pd3dDevice.SetSamplerState(0, D3DSAMP_MIPFILTER, D3DTEXF_POINT);
end;

procedure Tfegyv.drawfegyeffekt(mit:byte;mekkora:single;szog:single);
begin

  //  mekkora:=clip(0,1,mekkora);

  case mit of
    FEGYV_M4A1:M4A1.drawmuzzle(mekkora);
    FEGYV_M82A1:M82A1.drawmuzzle(mekkora);
    FEGYV_MP5A3:MP5A3.drawmuzzle(mekkora);
    // FEGYV_LAW:LAW.drawmuzzle(mekkora);
    FEGYV_MPG:MPG.drawmuzzle(mekkora, szog);
    FEGYV_QUAD:QUADRO.drawmuzzle(mekkora, szog);
    //FEGYV_NOOB:Noobcannon.drawmuzzle(mekkora);
    FEGYV_X72:X72.drawmuzzle(mekkora);
    FEGYV_BM3:BM3.drawmuzzle(mekkora);
    FEGYV_HPL:HPL.drawmuzzle(mekkora);
  end;
end;

procedure TFegyv.FlushFegyeffekt;
const
  PUFFER_MERET = 5000;
var
  pVert:PCustomvertexarray;
  curr, mpgstart, x72start:integer;
label
  unlock;
begin
  mpgstart:=0;x72start:=0;
  g_pd3ddevice.SetTransform(D3DTS_WORLD, identmatr);


  curr:=0;
  if FAILED(g_pVB.Lock(0, PUFFER_MERET * sizeof(Tcustomvertex), Pointer(pVert), D3DLOCK_DISCARD))
    then Exit;

  if curr + length(M4A1.muzzez) >= PUFFER_MERET then goto unlock;
  copymemory(@(pVert[curr]), @(M4A1.muzzez[0]), length(M4A1.muzzez) * sizeof(TCustomvertex));
  inc(curr, length(M4A1.muzzez));
  setlength(M4A1.muzzez, 0);

  if curr + length(M82A1.muzzez) >= PUFFER_MERET then goto unlock;
  copymemory(@(pVert[curr]), @(M82A1.muzzez[0]), length(M82A1.muzzez) * sizeof(TCustomvertex));
  inc(curr, length(M82A1.muzzez));
  setlength(M82A1.muzzez, 0);

  if curr + length(MP5A3.muzzez) >= PUFFER_MERET then goto unlock;
  copymemory(@(pVert[curr]), @(MP5A3.muzzez[0]), length(MP5A3.muzzez) * sizeof(TCustomvertex));
  inc(curr, length(MP5A3.muzzez));
  setlength(MP5A3.muzzez, 0);

  if curr + length(BM3.muzzez) >= PUFFER_MERET then goto unlock;
  copymemory(@(pVert[curr]), @(BM3.muzzez[0]), length(BM3.muzzez) * sizeof(TCustomvertex));
  inc(curr, length(BM3.muzzez));
  setlength(BM3.muzzez, 0);

  mpgstart:=curr;

  if curr + length(MPG.muzzez) >= PUFFER_MERET then goto unlock;
  copymemory(@(pVert[curr]), @(MPG.muzzez[0]), length(MPG.muzzez) * sizeof(TCustomvertex));
  inc(curr, length(MPG.muzzez));
  setlength(MPG.muzzez, 0);

  if curr + length(QUADRO.muzzez) >= PUFFER_MERET then goto unlock;
  copymemory(@(pVert[curr]), @(QUADRO.muzzez[0]), length(QUADRO.muzzez) * sizeof(TCustomvertex));
  inc(curr, length(QUADRO.muzzez));
  setlength(QUADRO.muzzez, 0);

  x72start:=curr;

  if curr + length(X72.muzzez) >= PUFFER_MERET then goto unlock;
  copymemory(@(pVert[curr]), @(X72.muzzez[0]), length(X72.muzzez) * sizeof(TCustomvertex));
  inc(curr, length(X72.muzzez));
  setlength(X72.muzzez, 0);
  unlock:
  g_pVB.Unlock;
  g_pd3ddevice.SetStreamSource(0, g_pVB, 0, sizeof(TCustomvertex));
  g_pd3ddevice.SetFVF(D3DFVF_CUSTOMVERTEX);

  if (mpgstart div 3) > 0 then begin
    g_pd3ddevice.settexture(0, gunmuztex);
    g_pd3ddevice.DrawPrimitive(D3DPT_TRIANGLELIST, 0, mpgstart div 3); //meg�ll
  end;

  if ((x72start - mpgstart) div 33) > 0 then begin
    g_pd3ddevice.settexture(0, mpgmuztex);
    g_pd3ddevice.DrawPrimitive(D3DPT_TRIANGLELIST, mpgstart, (x72start - mpgstart) div 3);
  end;

  if ((curr - x72start) div 3) > 0 then begin
    g_pd3ddevice.settexture(0, x72muztex);
    g_pd3ddevice.DrawPrimitive(D3DPT_TRIANGLELIST, x72start, (curr - x72start) div 3);
  end;

  setlength(M4A1.muzzez, 0);

end;

procedure TFegyv.unpreparealpha;
begin
  g_pd3dDevice.SetRenderState(D3DRS_CULLMODE, D3DCULL_CCW);
  g_pd3dDevice.SetRenderState(D3DRS_ALPHABLENDENABLE, iFalse);
  g_pd3dDevice.SetRenderState(D3DRS_ZWriteENABLE, iTrue);
  g_pd3dDevice.SetSamplerState(0, D3DSAMP_MIPFILTER, D3DTEXF_LINEAR);

end;


destructor TFegyv.Destroy;
begin
  M4A1.destroy;
  MPG.destroy;
  if g_pd3ddevice <> nil then
    g_pd3ddevice:=nil;
  setlength(M4proj, 0);
  setlength(Mpgproj, 0);
  inherited;
end;
end.


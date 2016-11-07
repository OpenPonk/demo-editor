accessing
modelXml
	"D:\OpenPonk\d4b\pizza-play\Pizzeria.xml"
	^ '<!-- Designer Root Node -->
<Designer>
  <!-- Graphical information of the models. Adding of other models is possible. -->
  <!-- Graphical models have references to the ontological model defined on the bottom. -->
  <AtdDiagramModels>
    <!-- Dont look for the organization boundary. The organization boundary is just a special type of a composite actor - CompositeImplemented.
         This allows us to draw black and whitebox perspectives on the organization. -->
    <!-- protected enum ActorRoleTypes { Elementary, Composite, CompositeImplemented } -->
    <AtdDiagramModel Id="8e574477-236e-4cb0-a924-6d0d96bbe1a9" ExternalId="Global-ATD" Zoom="1">
      <Shift X="711" Y="431" />
      <ActorRoles>
        <!-- PlacementId is an identifier of the drawn symbol. ActorRoleId is a reference to the ontological model. -->
        <ActorRole ActorRoleType="Elementary" PlacementId="8ff7511b-1713-4db7-aa54-79a5b2df5d82" ActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d">
          <Center X="-62" Y="-26" />
          <Size Width="85" Height="216" />
        </ActorRole>
        <ActorRole ActorRoleType="Elementary" PlacementId="a0fabaac-0a4a-4672-94be-0340694ff327" ActorRoleId="0f9154f7-b2fd-4a93-8291-ecd94d044023">
          <Center X="149" Y="-80" />
          <Size Width="78" Height="74" />
        </ActorRole>
        <ActorRole ActorRoleType="Elementary" PlacementId="a896170d-aa8f-4444-b782-226a4cbcee5f" ActorRoleId="33f34076-5fc2-48e5-b0a2-5e4c24c3d757">
          <Center X="149" Y="29" />
          <Size Width="64" Height="64" />
        </ActorRole>
        <ActorRole ActorRoleType="Composite" PlacementId="9961db88-cd68-4d34-a905-629df3d1dd06" ActorRoleId="c3376e58-17c5-4ce4-abdf-b5671cdf50bb">
          <Center X="-264" Y="-91" />
          <Size Width="74" Height="108" />
        </ActorRole>
        <ActorRole ActorRoleType="Composite" PlacementId="0287b1c9-e22f-41e7-ab66-c03064fd4f42" ActorRoleId="71d2df74-28a7-4620-a84c-ae6bd29f9f38">
          <Center X="-264" Y="29" />
          <Size Width="64" Height="89" />
        </ActorRole>
      </ActorRoles>
      <Transactions>
        <Transaction PlacementId="3c7700c3-b217-4fe4-8cdd-a444178df85d" TransactionId="f7d75fac-25b8-4325-8e11-dda71f3c2237">
          <Center X="-166" Y="-80" />
        </Transaction>
        <Transaction PlacementId="7a56327e-ee89-4a58-a6fd-e6a01ff15c8c" TransactionId="fd31e434-36ea-4b48-a684-7529952fe203">
          <Center X="-166" Y="29" />
        </Transaction>
        <Transaction PlacementId="8b8f3cc1-018c-4280-9941-f0a17e6b677c" TransactionId="22edf3c9-82d3-4052-92f0-bb2570a60300">
          <Center X="41" Y="-80" />
        </Transaction>
        <Transaction PlacementId="ebb209f6-0e08-4e58-8fb0-a0532f44f192" TransactionId="0034a7f0-21de-430f-a733-e8777ffdd086">
          <Center X="41" Y="29" />
        </Transaction>
      </Transactions>
      <InitConnectors>
        <InitConnector PlacementId="fb7390e8-1004-4b7f-896f-597df364a2cd" TransactionPlacementId="8b8f3cc1-018c-4280-9941-f0a17e6b677c" ActorRolePlacementId="8ff7511b-1713-4db7-aa54-79a5b2df5d82">
          <ActorRolePoint X="452" Y="-54" />
          <TransactionPoint X="480" Y="-64" />
          <Segments />
        </InitConnector>
        <InitConnector PlacementId="9232cd27-d753-448d-9bba-4a2db120bb56" TransactionPlacementId="ebb209f6-0e08-4e58-8fb0-a0532f44f192" ActorRolePlacementId="8ff7511b-1713-4db7-aa54-79a5b2df5d82">
          <ActorRolePoint X="449" Y="54" />
          <TransactionPoint X="480" Y="72" />
          <Segments />
        </InitConnector>
        <InitConnector PlacementId="7ede5bad-bb0d-4f77-a3f7-bc1db7c06a6a" TransactionPlacementId="7a56327e-ee89-4a58-a6fd-e6a01ff15c8c" ActorRolePlacementId="8ff7511b-1713-4db7-aa54-79a5b2df5d82">
          <ActorRolePoint X="367" Y="54" />
          <TransactionPoint X="333" Y="55" />
          <Segments />
        </InitConnector>
        <InitConnector PlacementId="25f52874-2798-419f-8afe-aed247c9e579" TransactionPlacementId="3c7700c3-b217-4fe4-8cdd-a444178df85d" ActorRolePlacementId="9961db88-cd68-4d34-a905-629df3d1dd06">
          <ActorRolePoint X="-227" Y="-78" />
          <TransactionPoint X="-196" Y="-80" />
          <Segments />
        </InitConnector>
      </InitConnectors>
      <ExecConnectors>
        <ExecConnector PlacementId="db2d21d7-7e79-4c3c-bd60-074fd8ded061" TransactionPlacementId="3c7700c3-b217-4fe4-8cdd-a444178df85d" ActorRolePlacementId="8ff7511b-1713-4db7-aa54-79a5b2df5d82">
          <ActorRolePoint X="367" Y="-54" />
          <TransactionPoint X="333" Y="-61" />
          <Segments />
        </ExecConnector>
        <ExecConnector PlacementId="1f433ded-3ffa-4ae8-817f-09b553ba2391" TransactionPlacementId="8b8f3cc1-018c-4280-9941-f0a17e6b677c" ActorRolePlacementId="a0fabaac-0a4a-4672-94be-0340694ff327">
          <ActorRolePoint X="571" Y="-70" />
          <TransactionPoint X="540" Y="-64" />
          <Segments />
        </ExecConnector>
        <ExecConnector PlacementId="5487fd0d-edbc-4aa0-b2f3-6629dfb0273f" TransactionPlacementId="ebb209f6-0e08-4e58-8fb0-a0532f44f192" ActorRolePlacementId="a896170d-aa8f-4444-b782-226a4cbcee5f">
          <ActorRolePoint X="571" Y="74" />
          <TransactionPoint X="540" Y="72" />
          <Segments />
        </ExecConnector>
        <ExecConnector PlacementId="268a32aa-b468-4cd5-bf37-1905e6349894" TransactionPlacementId="7a56327e-ee89-4a58-a6fd-e6a01ff15c8c" ActorRolePlacementId="0287b1c9-e22f-41e7-ab66-c03064fd4f42">
          <ActorRolePoint X="-227" Y="29" />
          <TransactionPoint X="-196" Y="29" />
          <Segments />
        </ExecConnector>
      </ExecConnectors>
    </AtdDiagramModel>
    <AtdDiagramModel Id="6a341303-7710-472d-9243-8669535c5902" ExternalId="Detailed-ATD" Zoom="1">
      <Shift X="0" Y="0" />
      <ActorRoles />
      <Transactions />
      <InitConnectors />
      <ExecConnectors />
    </AtdDiagramModel>
  </AtdDiagramModels>
  <PsdDiagramModels>
    <PsdDiagramModel Id="919cd4f5-dc73-4c0e-a503-3de54a9b6219" ExternalId="My PSD" Zoom="1">
      <Shift X="-102" Y="0" />
      <Transactions>
        <Transaction PlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5" TransactionId="f7d75fac-25b8-4325-8e11-dda71f3c2237" InitActorRoleId="c3376e58-17c5-4ce4-abdf-b5671cdf50bb" ProcessRootTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5">
          <Center X="767" Y="268" />
          <Size Width="600" Height="60" />
        </Transaction>
        <Transaction PlacementId="1ce916a4-9d87-4610-b996-ccdd4210c315" TransactionId="22edf3c9-82d3-4052-92f0-bb2570a60300" InitActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" ProcessRootTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5">
          <Center X="767" Y="398" />
          <Size Width="600" Height="60" />
        </Transaction>
        <Transaction PlacementId="3efd48af-2c55-481a-ae06-a6c7c2551556" TransactionId="0034a7f0-21de-430f-a733-e8777ffdd086" InitActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" ProcessRootTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5">
          <Center X="791" Y="521" />
          <Size Width="600" Height="60" />
        </Transaction>
        <Transaction PlacementId="20375337-7c43-4fac-afee-2a7e0052d44a" TransactionId="fd31e434-36ea-4b48-a684-7529952fe203" InitActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" ProcessRootTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5">
          <Center X="828" Y="644" />
          <Size Width="600" Height="60" />
        </Transaction>
      </Transactions>
      <CausalLinks>
        <CausalLink PlacementId="c1038384-278e-4f39-90ae-016fd11fbe30" DestinationTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5" CausalLinkId="5f065b95-8bf8-4a4c-bebc-b74f1dcfadef">
          <DestinationTransactionPoint X="469" Y="256" />
          <Segments />
          <SourceTransactionPoint X="265" Y="191" />
        </CausalLink>
        <CausalLink PlacementId="89ae74aa-3121-42c0-85f4-f2509916121b" DestinationTransactionPlacementId="1ce916a4-9d87-4610-b996-ccdd4210c315" CausalLinkId="1f9600a1-4fdc-4e92-a8c2-9fb914e3ced5" SourceTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5">
          <DestinationTransactionPoint X="469" Y="386" />
          <Segments />
          <SourceTransactionPoint X="541" Y="326" />
        </CausalLink>
        <CausalLink PlacementId="293a8c79-cd39-4964-aa17-57955ed7ae85" DestinationTransactionPlacementId="3efd48af-2c55-481a-ae06-a6c7c2551556" CausalLinkId="2b68262f-a64e-46ee-bf8e-7033951b3c98" SourceTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5">
          <DestinationTransactionPoint X="671" Y="486" />
          <Segments>
            <Segment Length="27" Direction="Bottom" />
            <Segment Length="203" Direction="Left" />
            <Segment Length="137" Direction="Bottom" />
            <Segment Length="83" Direction="Right" />
          </Segments>
          <SourceTransactionPoint X="815" Y="303" />
        </CausalLink>
        <CausalLink PlacementId="0d1c921a-4e96-4f24-b0c6-18e2e169923f" DestinationTransactionPlacementId="20375337-7c43-4fac-afee-2a7e0052d44a" CausalLinkId="c173522e-f570-4748-91bb-87f7c492a99e" SourceTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5">
          <DestinationTransactionPoint X="671" Y="609" />
          <Segments>
            <Segment Length="27" Direction="Bottom" />
            <Segment Length="222" Direction="Left" />
            <Segment Length="271" Direction="Bottom" />
          </Segments>
          <SourceTransactionPoint X="815" Y="303" />
        </CausalLink>
      </CausalLinks>
      <ConditionalLinks>
        <ConditionalLink PlacementId="dceaac89-bad6-449d-ae75-b5613bc848ee" DestinationTransactionPlacementId="3efd48af-2c55-481a-ae06-a6c7c2551556" ConditionalLinkId="91c4b673-3251-436a-af42-2eb571c3b719" SourceTransactionPlacementId="1ce916a4-9d87-4610-b996-ccdd4210c315">
          <DestinationTransactionPoint X="671" Y="486" />
          <Segments>
            <Segment Length="18" Direction="Top" />
            <Segment Length="90" Direction="Right" />
            <Segment Length="112" Direction="Bottom" />
            <Segment Length="258" Direction="Left" />
          </Segments>
          <SourceTransactionPoint X="863" Y="363" />
        </ConditionalLink>
        <ConditionalLink PlacementId="33e91cd6-1bf9-42ff-aeab-680402098a1f" DestinationTransactionPlacementId="af71da2f-b8a8-40cd-8c7a-6eef0a22d8d5" ConditionalLinkId="9e55c938-1515-4c24-a59d-6beecf7f02bb" SourceTransactionPlacementId="20375337-7c43-4fac-afee-2a7e0052d44a">
          <DestinationTransactionPoint X="839" Y="303" />
          <Segments>
            <Segment Length="18" Direction="Top" />
            <Segment Length="95" Direction="Right" />
            <Segment Length="268" Direction="Top" />
            <Segment Length="180" Direction="Left" />
          </Segments>
          <SourceTransactionPoint X="863" Y="609" />
        </ConditionalLink>
        <ConditionalLink PlacementId="98886060-0947-4c6a-8540-b9d3f05fbab6" DestinationTransactionPlacementId="20375337-7c43-4fac-afee-2a7e0052d44a" ConditionalLinkId="05f2ed24-86fe-439e-83e4-b2bf114f12c7" SourceTransactionPlacementId="3efd48af-2c55-481a-ae06-a6c7c2551556">
          <DestinationTransactionPoint X="732" Y="609" />
          <Segments>
            <Segment Length="18" Direction="Top" />
            <Segment Length="74" Direction="Right" />
            <Segment Length="102" Direction="Bottom" />
            <Segment Length="229" Direction="Left" />
          </Segments>
          <SourceTransactionPoint X="887" Y="486" />
        </ConditionalLink>
      </ConditionalLinks>
    </PsdDiagramModel>
  </PsdDiagramModels>
  <!-- Ontological DEMO model that is used for simulation without the graphical information. -->
  <!-- Id - Guid of the model -->
  <!-- ExternalId - Id reserved for identification in external system where other metadata are stored such as name. -->
  <!-- Published - Information weather the model is already published for simulation (therefore we are not able to edit it. -->
  <!-- OwnerId - Model creator id. -->
  <!-- Version - Model version. -->
  <DemoModel Id="7cf4ed91-2546-4ccc-a7fc-6e190653becd" ExternalId="mijn model" Published="false" OwnerId="4" Version="0">
    <Transactions>
      <Transaction Id="f7d75fac-25b8-4325-8e11-dda71f3c2237" ExternalId="T-0" Label="Completion" AbstractionLevel="Ontological" ExecActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d">
        <!-- Transaction can have multiple initiators. -->
        <InitActorRoleIds>
          <Id>c3376e58-17c5-4ce4-abdf-b5671cdf50bb</Id>
        </InitActorRoleIds>
      </Transaction>
      <Transaction Id="fd31e434-36ea-4b48-a684-7529952fe203" ExternalId="T-1" Label="Payment" AbstractionLevel="Ontological" ExecActorRoleId="71d2df74-28a7-4620-a84c-ae6bd29f9f38">
        <InitActorRoleIds>
          <Id>7ddf072f-4faf-48a3-9aaa-e3612606522d</Id>
        </InitActorRoleIds>
      </Transaction>
      <Transaction Id="22edf3c9-82d3-4052-92f0-bb2570a60300" ExternalId="T-2" Label="Preparation" AbstractionLevel="Ontological" ExecActorRoleId="0f9154f7-b2fd-4a93-8291-ecd94d044023">
        <InitActorRoleIds>
          <Id>7ddf072f-4faf-48a3-9aaa-e3612606522d</Id>
        </InitActorRoleIds>
      </Transaction>
      <Transaction Id="0034a7f0-21de-430f-a733-e8777ffdd086" ExternalId="T-3" Label="Delivery" AbstractionLevel="Ontological" ExecActorRoleId="33f34076-5fc2-48e5-b0a2-5e4c24c3d757">
        <InitActorRoleIds>
          <Id>7ddf072f-4faf-48a3-9aaa-e3612606522d</Id>
        </InitActorRoleIds>
      </Transaction>
    </Transactions>
    <ActorRoles>
      <ActorRole Id="7ddf072f-4faf-48a3-9aaa-e3612606522d" ExternalId="A-0" Label="Completer" IsSelfGenerating="false" IsComposite="false" />
      <ActorRole Id="0f9154f7-b2fd-4a93-8291-ecd94d044023" ExternalId="A-1" Label="Baker" IsSelfGenerating="false" IsComposite="false" />
      <ActorRole Id="33f34076-5fc2-48e5-b0a2-5e4c24c3d757" ExternalId="A-2" Label="Deliverer" IsSelfGenerating="false" IsComposite="false" />
      <ActorRole Id="c3376e58-17c5-4ce4-abdf-b5671cdf50bb" ExternalId="CA-0" Label="Customer" IsSelfGenerating="true" IsComposite="true" />
      <ActorRole Id="71d2df74-28a7-4620-a84c-ae6bd29f9f38" ExternalId="CA-1" Label="Pizza Payer" IsSelfGenerating="false" IsComposite="true" />
    </ActorRoles>
    <Facts />
    <CausalRules />
    <ConditionalRules />
    <CausalLinks>
      <!-- Causal links are derived from the notion of the process. However the information about source state and targed c-Act + cardinalities need to be stored. -->
      <CausalLink Id="1f9600a1-4fdc-4e92-a8c2-9fb914e3ced5" DestinationTransactionId="22edf3c9-82d3-4052-92f0-bb2570a60300" ScopeActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" SourceSideType="Exec" DestinationSideType="Init" SourceTransactionState="Pm" SourceTransactionId="f7d75fac-25b8-4325-8e11-dda71f3c2237" MinCardinality="0" ExternalId="[T-0 =&gt; A-0 =&gt; T-2]" />
      <CausalLink Id="2b68262f-a64e-46ee-bf8e-7033951b3c98" DestinationTransactionId="0034a7f0-21de-430f-a733-e8777ffdd086" ScopeActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" SourceSideType="Exec" DestinationSideType="Init" SourceTransactionState="St" SourceTransactionId="f7d75fac-25b8-4325-8e11-dda71f3c2237" MinCardinality="0" ExternalId="[T-0 =&gt; A-0 =&gt; T-3]" />
      <CausalLink Id="c173522e-f570-4748-91bb-87f7c492a99e" DestinationTransactionId="fd31e434-36ea-4b48-a684-7529952fe203" ScopeActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" SourceSideType="Exec" DestinationSideType="Init" SourceTransactionState="St" SourceTransactionId="f7d75fac-25b8-4325-8e11-dda71f3c2237" MinCardinality="0" ExternalId="[T-0 =&gt; A-0 =&gt; T-1]" />
      <CausalLink Id="5f065b95-8bf8-4a4c-bebc-b74f1dcfadef" DestinationTransactionId="f7d75fac-25b8-4325-8e11-dda71f3c2237" ScopeActorRoleId="c3376e58-17c5-4ce4-abdf-b5671cdf50bb" SourceSideType="Exec" DestinationSideType="Init" SourceTransactionState="Pm" MinCardinality="0" ExternalId="[CA-0 =&gt; T-0]" />
    </CausalLinks>
    <ConditionalLinks>
      <!-- DestinationTransactionCAct should be filled correctly. None is a bug. -->
      <ConditionalLink Id="91c4b673-3251-436a-af42-2eb571c3b719" DestinationTransactionId="0034a7f0-21de-430f-a733-e8777ffdd086" ScopeActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" SourceSideType="Init" DestinationSideType="Init" SourceTransactionState="Ac" SourceTransactionId="22edf3c9-82d3-4052-92f0-bb2570a60300" DestinationTransactionCAct="Request" />
      <ConditionalLink Id="9e55c938-1515-4c24-a59d-6beecf7f02bb" DestinationTransactionId="f7d75fac-25b8-4325-8e11-dda71f3c2237" ScopeActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" SourceSideType="Init" DestinationSideType="Exec" SourceTransactionState="Ac" SourceTransactionId="fd31e434-36ea-4b48-a684-7529952fe203" DestinationTransactionCAct="Accept" />
      <ConditionalLink Id="05f2ed24-86fe-439e-83e4-b2bf114f12c7" DestinationTransactionId="fd31e434-36ea-4b48-a684-7529952fe203" ScopeActorRoleId="7ddf072f-4faf-48a3-9aaa-e3612606522d" SourceSideType="Init" DestinationSideType="Init" SourceTransactionState="Ac" SourceTransactionId="0034a7f0-21de-430f-a733-e8777ffdd086" DestinationTransactionCAct="Request" />
    </ConditionalLinks>
  </DemoModel>
</Designer>
'